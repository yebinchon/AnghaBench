
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct or51211_state {TYPE_1__* config; } ;
struct dvb_frontend {struct or51211_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {int demod_address; } ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dprintk (char*,unsigned char,unsigned char) ;
 scalar_t__ i2c_readbytes (struct or51211_state*,int ,unsigned char*,int) ;
 scalar_t__ i2c_writebytes (struct or51211_state*,int ,unsigned char*,int) ;
 int msleep (int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int or51211_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct or51211_state* state = fe->demodulator_priv;
 unsigned char rec_buf[2];
 unsigned char snd_buf[] = {0x04,0x00,0x03,0x00};
 *status = 0;


 if (i2c_writebytes(state,state->config->demod_address,snd_buf,3)) {
  pr_warn("write error\n");
  return -1;
 }
 msleep(3);
 if (i2c_readbytes(state,state->config->demod_address,rec_buf,2)) {
  pr_warn("read error\n");
  return -1;
 }
 dprintk("%x %x\n", rec_buf[0], rec_buf[1]);

 if (rec_buf[0] & 0x01) {
  *status |= FE_HAS_SIGNAL;
  *status |= FE_HAS_CARRIER;
  *status |= FE_HAS_VITERBI;
  *status |= FE_HAS_SYNC;
  *status |= FE_HAS_LOCK;
 }
 return 0;
}
