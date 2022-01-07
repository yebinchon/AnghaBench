
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vc4_shader_validation_state {int max_ip; int* shader; int branch_targets; } ;
typedef int int32_t ;
typedef int inst ;


 int DRM_DEBUG (char*,...) ;
 int QPU_BRANCH_REG ;
 int QPU_BRANCH_REL ;
 int QPU_BRANCH_TARGET ;
 void* QPU_GET_FIELD (int,int ) ;
 int QPU_SIG ;
 scalar_t__ QPU_SIG_BRANCH ;
 scalar_t__ QPU_SIG_PROG_END ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static bool
vc4_validate_branches(struct vc4_shader_validation_state *validation_state)
{
 uint32_t max_branch_target = 0;
 int ip;
 int last_branch = -2;

 for (ip = 0; ip < validation_state->max_ip; ip++) {
  uint64_t inst = validation_state->shader[ip];
  int32_t branch_imm = QPU_GET_FIELD(inst, QPU_BRANCH_TARGET);
  uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);
  uint32_t after_delay_ip = ip + 4;
  uint32_t branch_target_ip;

  if (sig == QPU_SIG_PROG_END) {






   validation_state->max_ip = ip + 3;
   continue;
  }

  if (sig != QPU_SIG_BRANCH)
   continue;

  if (ip - last_branch < 4) {
   DRM_DEBUG("Branch at %d during delay slots\n", ip);
   return 0;
  }
  last_branch = ip;

  if (inst & QPU_BRANCH_REG) {
   DRM_DEBUG("branching from register relative "
      "not supported\n");
   return 0;
  }

  if (!(inst & QPU_BRANCH_REL)) {
   DRM_DEBUG("relative branching required\n");
   return 0;
  }






  if (branch_imm % sizeof(inst) != 0) {
   DRM_DEBUG("branch target not aligned\n");
   return 0;
  }

  branch_target_ip = after_delay_ip + (branch_imm >> 3);
  if (branch_target_ip >= validation_state->max_ip) {
   DRM_DEBUG("Branch at %d outside of shader (ip %d/%d)\n",
      ip, branch_target_ip,
      validation_state->max_ip);
   return 0;
  }
  set_bit(branch_target_ip, validation_state->branch_targets);




  if (after_delay_ip >= validation_state->max_ip) {
   DRM_DEBUG("Branch at %d continues past shader end "
      "(%d/%d)\n",
      ip, after_delay_ip, validation_state->max_ip);
   return 0;
  }
  set_bit(after_delay_ip, validation_state->branch_targets);
  max_branch_target = max(max_branch_target, after_delay_ip);
 }

 if (max_branch_target > validation_state->max_ip - 3) {
  DRM_DEBUG("Branch landed after QPU_SIG_PROG_END");
  return 0;
 }

 return 1;
}
