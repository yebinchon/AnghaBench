
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_shader_validation_state {scalar_t__* tmu_write_count; } ;



__attribute__((used)) static bool
texturing_in_progress(struct vc4_shader_validation_state *validation_state)
{
 return (validation_state->tmu_write_count[0] != 0 ||
  validation_state->tmu_write_count[1] != 0);
}
