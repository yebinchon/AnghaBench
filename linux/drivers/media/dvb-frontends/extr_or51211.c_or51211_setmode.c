
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct or51211_state {TYPE_1__* config; } ;
struct dvb_frontend {struct or51211_state* demodulator_priv; } ;
struct TYPE_2__ {int demod_address; int (* setmode ) (struct dvb_frontend*,int) ;} ;


 int* cmd_buf ;
 int dprintk (char*,int,int) ;
 scalar_t__ i2c_readbytes (struct or51211_state*,int ,int*,int) ;
 scalar_t__ i2c_writebytes (struct or51211_state*,int ,int*,int) ;
 int msleep (int) ;
 int pr_warn (char*) ;
 int* run_buf ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int or51211_setmode(struct dvb_frontend* fe, int mode)
{
 struct or51211_state* state = fe->demodulator_priv;
 u8 rec_buf[14];

 state->config->setmode(fe, mode);

 if (i2c_writebytes(state,state->config->demod_address,run_buf,2)) {
  pr_warn("error 1\n");
  return -1;
 }


 msleep(10);
 if (i2c_writebytes(state,state->config->demod_address,run_buf,2)) {
  pr_warn("error 2\n");
  return -1;
 }

 msleep(10);
 if (i2c_writebytes(state,state->config->demod_address,cmd_buf,3)) {
  pr_warn("error 3\n");
  return -1;
 }

 rec_buf[0] = 0x04;
 rec_buf[1] = 0x00;
 rec_buf[2] = 0x03;
 rec_buf[3] = 0x00;
 msleep(20);
 if (i2c_writebytes(state,state->config->demod_address,rec_buf,3)) {
  pr_warn("error 5\n");
 }
 msleep(3);
 if (i2c_readbytes(state,state->config->demod_address,&rec_buf[10],2)) {
  pr_warn("error 6\n");
  return -1;
 }
 dprintk("rec status %02x %02x\n", rec_buf[10], rec_buf[11]);

 return 0;
}
