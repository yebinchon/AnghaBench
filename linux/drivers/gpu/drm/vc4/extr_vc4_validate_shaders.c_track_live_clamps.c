
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
struct vc4_validated_shader_info {int uniforms_size; } ;
struct vc4_shader_validation_state {int* shader; size_t ip; int* live_max_clamp_regs; int * live_min_clamp_offsets; } ;


 int QPU_ADD_A ;
 int QPU_ADD_B ;
 size_t QPU_A_MAX ;
 size_t QPU_A_MIN ;
 int QPU_COND_ADD ;
 size_t QPU_COND_ALWAYS ;
 size_t QPU_GET_FIELD (int,int ) ;
 size_t QPU_MUX_A ;
 size_t QPU_MUX_B ;
 int QPU_OP_ADD ;
 int QPU_RADDR_A ;
 int QPU_RADDR_B ;
 size_t QPU_R_UNIF ;
 int QPU_SIG ;
 size_t QPU_SIG_SMALL_IMM ;
 int QPU_WADDR_ADD ;
 int QPU_WADDR_MUL ;
 int QPU_WS ;
 size_t raddr_add_a_to_live_reg_index (int) ;
 size_t waddr_to_live_reg_index (size_t,int) ;

__attribute__((used)) static void
track_live_clamps(struct vc4_validated_shader_info *validated_shader,
    struct vc4_shader_validation_state *validation_state)
{
 uint64_t inst = validation_state->shader[validation_state->ip];
 uint32_t op_add = QPU_GET_FIELD(inst, QPU_OP_ADD);
 uint32_t waddr_add = QPU_GET_FIELD(inst, QPU_WADDR_ADD);
 uint32_t waddr_mul = QPU_GET_FIELD(inst, QPU_WADDR_MUL);
 uint32_t cond_add = QPU_GET_FIELD(inst, QPU_COND_ADD);
 uint32_t add_a = QPU_GET_FIELD(inst, QPU_ADD_A);
 uint32_t add_b = QPU_GET_FIELD(inst, QPU_ADD_B);
 uint32_t raddr_a = QPU_GET_FIELD(inst, QPU_RADDR_A);
 uint32_t raddr_b = QPU_GET_FIELD(inst, QPU_RADDR_B);
 uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);
 bool ws = inst & QPU_WS;
 uint32_t lri_add_a, lri_add, lri_mul;
 bool add_a_is_min_0;




 lri_add_a = raddr_add_a_to_live_reg_index(inst);
 add_a_is_min_0 = (lri_add_a != ~0 &&
     validation_state->live_max_clamp_regs[lri_add_a]);


 lri_add = waddr_to_live_reg_index(waddr_add, ws);
 lri_mul = waddr_to_live_reg_index(waddr_mul, !ws);
 if (lri_mul != ~0) {
  validation_state->live_max_clamp_regs[lri_mul] = 0;
  validation_state->live_min_clamp_offsets[lri_mul] = ~0;
 }
 if (lri_add != ~0) {
  validation_state->live_max_clamp_regs[lri_add] = 0;
  validation_state->live_min_clamp_offsets[lri_add] = ~0;
 } else {



  return;
 }



 if (cond_add != QPU_COND_ALWAYS)
  return;

 if (op_add == QPU_A_MAX) {



  if (sig != QPU_SIG_SMALL_IMM || raddr_b != 0 ||
      (add_a != QPU_MUX_B && add_b != QPU_MUX_B)) {
   return;
  }

  validation_state->live_max_clamp_regs[lri_add] = 1;
 } else if (op_add == QPU_A_MIN) {



  if (!add_a_is_min_0)
   return;

  if (!(add_b == QPU_MUX_A && raddr_a == QPU_R_UNIF) &&
      !(add_b == QPU_MUX_B && raddr_b == QPU_R_UNIF &&
        sig != QPU_SIG_SMALL_IMM)) {
   return;
  }

  validation_state->live_min_clamp_offsets[lri_add] =
   validated_shader->uniforms_size;
 }
}
