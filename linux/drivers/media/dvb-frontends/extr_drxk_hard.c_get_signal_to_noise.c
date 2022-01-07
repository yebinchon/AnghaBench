
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxk_state {int m_operation_mode; } ;
typedef scalar_t__ s32 ;





 int dprintk (int,char*) ;
 int get_dvbt_signal_to_noise (struct drxk_state*,scalar_t__*) ;
 int get_qam_signal_to_noise (struct drxk_state*,scalar_t__*) ;

__attribute__((used)) static int get_signal_to_noise(struct drxk_state *state, s32 *p_signal_to_noise)
{
 dprintk(1, "\n");

 *p_signal_to_noise = 0;
 switch (state->m_operation_mode) {
 case 130:
  return get_dvbt_signal_to_noise(state, p_signal_to_noise);
 case 129:
 case 128:
  return get_qam_signal_to_noise(state, p_signal_to_noise);
 default:
  break;
 }
 return 0;
}
