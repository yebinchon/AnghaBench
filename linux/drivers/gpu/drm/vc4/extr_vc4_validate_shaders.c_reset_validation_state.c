
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_shader_validation_state {int* live_max_clamp_regs; int * live_immediates; int * live_min_clamp_offsets; TYPE_1__* tmu_setup; } ;
struct TYPE_2__ {int * p_offset; } ;


 int LIVE_REG_COUNT ;

__attribute__((used)) static void
reset_validation_state(struct vc4_shader_validation_state *validation_state)
{
 int i;

 for (i = 0; i < 8; i++)
  validation_state->tmu_setup[i / 4].p_offset[i % 4] = ~0;

 for (i = 0; i < LIVE_REG_COUNT; i++) {
  validation_state->live_min_clamp_offsets[i] = ~0;
  validation_state->live_max_clamp_regs[i] = 0;
  validation_state->live_immediates[i] = ~0;
 }
}
