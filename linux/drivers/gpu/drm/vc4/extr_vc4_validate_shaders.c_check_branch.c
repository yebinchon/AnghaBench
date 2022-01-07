
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vc4_validated_shader_info {int dummy; } ;
struct vc4_shader_validation_state {int needs_uniform_address_for_loop; int ip; } ;
typedef void* int32_t ;


 int DRM_DEBUG (char*,int ) ;
 int QPU_BRANCH_TARGET ;
 void* QPU_GET_FIELD (int ,int ) ;
 int QPU_WADDR_ADD ;
 int QPU_WADDR_MUL ;
 scalar_t__ QPU_W_NOP ;

__attribute__((used)) static bool
check_branch(uint64_t inst,
      struct vc4_validated_shader_info *validated_shader,
      struct vc4_shader_validation_state *validation_state,
      int ip)
{
 int32_t branch_imm = QPU_GET_FIELD(inst, QPU_BRANCH_TARGET);
 uint32_t waddr_add = QPU_GET_FIELD(inst, QPU_WADDR_ADD);
 uint32_t waddr_mul = QPU_GET_FIELD(inst, QPU_WADDR_MUL);

 if ((int)branch_imm < 0)
  validation_state->needs_uniform_address_for_loop = 1;




 if (waddr_add != QPU_W_NOP || waddr_mul != QPU_W_NOP) {
  DRM_DEBUG("branch instruction at %d wrote a register.\n",
     validation_state->ip);
  return 0;
 }

 return 1;
}
