
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vc4_shader_validation_state {int needs_uniform_address_update; int branch_targets; int ip; } ;


 int DRM_DEBUG (char*) ;
 int reset_validation_state (struct vc4_shader_validation_state*) ;
 int test_bit (int ,int ) ;
 scalar_t__ texturing_in_progress (struct vc4_shader_validation_state*) ;

__attribute__((used)) static bool
vc4_handle_branch_target(struct vc4_shader_validation_state *validation_state)
{
 uint32_t ip = validation_state->ip;

 if (!test_bit(ip, validation_state->branch_targets))
  return 1;

 if (texturing_in_progress(validation_state)) {
  DRM_DEBUG("Branch target landed during TMU setup\n");
  return 0;
 }
 reset_validation_state(validation_state);
 validation_state->needs_uniform_address_update = 1;

 return 1;
}
