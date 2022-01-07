
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int u32 ;
struct vc4_validated_shader_info {int dummy; } ;
struct vc4_shader_validation_state {int* shader; size_t ip; int all_registers_used; scalar_t__* live_immediates; } ;


 int DRM_DEBUG (char*,...) ;
 int QPU_COND_ADD ;
 scalar_t__ QPU_COND_ALWAYS ;
 int QPU_COND_MUL ;
 scalar_t__ QPU_GET_FIELD (int,int ) ;
 int QPU_LOAD_IMM ;
 int QPU_PACK ;
 scalar_t__ QPU_PACK_A_NOP ;
 int QPU_SIG ;
 scalar_t__ QPU_SIG_LOAD_IMM ;
 int QPU_WADDR_ADD ;
 int QPU_WADDR_MUL ;
 int QPU_WS ;
 int check_tmu_write (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ;
 scalar_t__ live_reg_is_upper_half (int) ;
 int validate_uniform_address_write (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ;
 int waddr_to_live_reg_index (scalar_t__,int) ;

__attribute__((used)) static bool
check_reg_write(struct vc4_validated_shader_info *validated_shader,
  struct vc4_shader_validation_state *validation_state,
  bool is_mul)
{
 uint64_t inst = validation_state->shader[validation_state->ip];
 uint32_t waddr = (is_mul ?
     QPU_GET_FIELD(inst, QPU_WADDR_MUL) :
     QPU_GET_FIELD(inst, QPU_WADDR_ADD));
 uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);
 bool ws = inst & QPU_WS;
 bool is_b = is_mul ^ ws;
 u32 lri = waddr_to_live_reg_index(waddr, is_b);

 if (lri != -1) {
  uint32_t cond_add = QPU_GET_FIELD(inst, QPU_COND_ADD);
  uint32_t cond_mul = QPU_GET_FIELD(inst, QPU_COND_MUL);

  if (sig == QPU_SIG_LOAD_IMM &&
      QPU_GET_FIELD(inst, QPU_PACK) == QPU_PACK_A_NOP &&
      ((is_mul && cond_mul == QPU_COND_ALWAYS) ||
       (!is_mul && cond_add == QPU_COND_ALWAYS))) {
   validation_state->live_immediates[lri] =
    QPU_GET_FIELD(inst, QPU_LOAD_IMM);
  } else {
   validation_state->live_immediates[lri] = ~0;
  }

  if (live_reg_is_upper_half(lri))
   validation_state->all_registers_used = 1;
 }

 switch (waddr) {
 case 131:
  if (is_b) {
   DRM_DEBUG("relative uniforms address change "
      "unsupported\n");
   return 0;
  }

  return validate_uniform_address_write(validated_shader,
            validation_state,
            is_mul);

 case 143:
 case 144:
 case 141:



  return 1;

 case 138:
 case 137:
 case 139:
 case 140:
 case 134:
 case 133:
 case 135:
 case 136:
  return check_tmu_write(validated_shader, validation_state,
           is_mul);

 case 147:
 case 132:
 case 145:
 case 146:



  DRM_DEBUG("Unsupported waddr %d\n", waddr);
  return 0;

 case 128:
  DRM_DEBUG("General VPM DMA unsupported\n");
  return 0;

 case 130:
 case 129:




  return 1;

 case 142:
  return 1;
 }

 return 1;
}
