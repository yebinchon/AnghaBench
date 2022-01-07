
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int dummy; } ;


 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;

int dib3000mc_pid_control(struct dvb_frontend *fe, int index, int pid,int onoff)
{
 struct dib3000mc_state *state = fe->demodulator_priv;
 dib3000mc_write_word(state, 212 + index, onoff ? (1 << 13) | pid : 0);
 return 0;
}
