
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct drxk_state* demodulator_priv; } ;
struct drxk_state {scalar_t__ m_drxk_state; } ;
typedef int s32 ;


 scalar_t__ DRXK_NO_DEV ;
 scalar_t__ DRXK_UNINITIALIZED ;
 int EAGAIN ;
 int ENODEV ;
 int dprintk (int,char*) ;
 int get_signal_to_noise (struct drxk_state*,int*) ;

__attribute__((used)) static int drxk_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct drxk_state *state = fe->demodulator_priv;
 s32 snr2;

 dprintk(1, "\n");

 if (state->m_drxk_state == DRXK_NO_DEV)
  return -ENODEV;
 if (state->m_drxk_state == DRXK_UNINITIALIZED)
  return -EAGAIN;

 get_signal_to_noise(state, &snr2);


 if (snr2 < 0)
  snr2 = 0;
 *snr = snr2 & 0xffff;
 return 0;
}
