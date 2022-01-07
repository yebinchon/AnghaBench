
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drxd_state {int tuner_mirrors; int fe_fs_add_incr; int org_fe_fs_add_incr; int sys_clock_freq; scalar_t__ intermediate_freq; } ;


 int FE_FS_REG_ADD_INC_LOP__A ;
 void* MulDiv32 (scalar_t__,int,int ) ;
 int Write32 (struct drxd_state*,int ,int,int ) ;

__attribute__((used)) static int SetFrequencyShift(struct drxd_state *state,
        u32 offsetFreq, int channelMirrored)
{
 int negativeShift = (state->tuner_mirrors == channelMirrored);
 state->fe_fs_add_incr = MulDiv32(state->intermediate_freq +
      offsetFreq,
      1 << 28, state->sys_clock_freq);

 state->fe_fs_add_incr &= 0x0FFFFFFFL;
 if (negativeShift)
  state->fe_fs_add_incr = ((1 << 28) - state->fe_fs_add_incr);



 state->org_fe_fs_add_incr = MulDiv32(state->intermediate_freq,
          1 << 28, state->sys_clock_freq);

 state->org_fe_fs_add_incr &= 0x0FFFFFFFL;
 if (negativeShift)
  state->org_fe_fs_add_incr = ((1L << 28) -
          state->org_fe_fs_add_incr);

 return Write32(state, FE_FS_REG_ADD_INC_LOP__A,
         state->fe_fs_add_incr, 0);
}
