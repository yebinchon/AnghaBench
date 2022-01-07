
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vc4_validated_shader_info {int uniforms_size; } ;
struct vc4_shader_validation_state {size_t ip; int* tmu_write_count; scalar_t__* live_min_clamp_offsets; scalar_t__ needs_uniform_address_update; TYPE_1__* tmu_setup; int * shader; } ;
struct TYPE_2__ {int* p_offset; int is_direct; } ;


 int DRM_DEBUG (char*,...) ;
 int QPU_ADD_B ;
 scalar_t__ QPU_A_ADD ;
 scalar_t__ QPU_GET_FIELD (int ,int ) ;
 scalar_t__ QPU_MUX_A ;
 scalar_t__ QPU_MUX_B ;
 int QPU_OP_ADD ;
 int QPU_RADDR_A ;
 int QPU_RADDR_B ;
 scalar_t__ QPU_R_UNIF ;
 int QPU_SIG ;
 scalar_t__ QPU_SIG_SMALL_IMM ;
 int QPU_WADDR_ADD ;
 int QPU_WADDR_MUL ;
 scalar_t__ QPU_W_TMU0_B ;
 int is_tmu_submit (scalar_t__) ;
 scalar_t__ raddr_add_a_to_live_reg_index (int ) ;
 int record_texture_sample (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ;

__attribute__((used)) static bool
check_tmu_write(struct vc4_validated_shader_info *validated_shader,
  struct vc4_shader_validation_state *validation_state,
  bool is_mul)
{
 uint64_t inst = validation_state->shader[validation_state->ip];
 uint32_t waddr = (is_mul ?
     QPU_GET_FIELD(inst, QPU_WADDR_MUL) :
     QPU_GET_FIELD(inst, QPU_WADDR_ADD));
 uint32_t raddr_a = QPU_GET_FIELD(inst, QPU_RADDR_A);
 uint32_t raddr_b = QPU_GET_FIELD(inst, QPU_RADDR_B);
 int tmu = waddr > QPU_W_TMU0_B;
 bool submit = is_tmu_submit(waddr);
 bool is_direct = submit && validation_state->tmu_write_count[tmu] == 0;
 uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);

 if (is_direct) {
  uint32_t add_b = QPU_GET_FIELD(inst, QPU_ADD_B);
  uint32_t clamp_reg, clamp_offset;

  if (sig == QPU_SIG_SMALL_IMM) {
   DRM_DEBUG("direct TMU read used small immediate\n");
   return 0;
  }




  if (is_mul ||
      QPU_GET_FIELD(inst, QPU_OP_ADD) != QPU_A_ADD) {
   DRM_DEBUG("direct TMU load wasn't an add\n");
   return 0;
  }






  clamp_reg = raddr_add_a_to_live_reg_index(inst);
  if (clamp_reg == ~0) {
   DRM_DEBUG("direct TMU load wasn't clamped\n");
   return 0;
  }

  clamp_offset = validation_state->live_min_clamp_offsets[clamp_reg];
  if (clamp_offset == ~0) {
   DRM_DEBUG("direct TMU load wasn't clamped\n");
   return 0;
  }




  validation_state->tmu_setup[tmu].p_offset[1] =
   clamp_offset;

  if (!(add_b == QPU_MUX_A && raddr_a == QPU_R_UNIF) &&
      !(add_b == QPU_MUX_B && raddr_b == QPU_R_UNIF)) {
   DRM_DEBUG("direct TMU load didn't add to a uniform\n");
   return 0;
  }

  validation_state->tmu_setup[tmu].is_direct = 1;
 } else {
  if (raddr_a == QPU_R_UNIF || (sig != QPU_SIG_SMALL_IMM &&
           raddr_b == QPU_R_UNIF)) {
   DRM_DEBUG("uniform read in the same instruction as "
      "texture setup.\n");
   return 0;
  }
 }

 if (validation_state->tmu_write_count[tmu] >= 4) {
  DRM_DEBUG("TMU%d got too many parameters before dispatch\n",
     tmu);
  return 0;
 }
 validation_state->tmu_setup[tmu].p_offset[validation_state->tmu_write_count[tmu]] =
  validated_shader->uniforms_size;
 validation_state->tmu_write_count[tmu]++;



 if (!is_direct) {
  if (validation_state->needs_uniform_address_update) {
   DRM_DEBUG("Texturing with undefined uniform address\n");
   return 0;
  }

  validated_shader->uniforms_size += 4;
 }

 if (submit) {
  if (!record_texture_sample(validated_shader,
        validation_state, tmu)) {
   return 0;
  }

  validation_state->tmu_write_count[tmu] = 0;
 }

 return 1;
}
