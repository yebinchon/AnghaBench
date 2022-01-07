
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;


 int EREMOTEIO ;
 int MB86A16_DCC1 ;
 int MB86A16_DCC1_DISTA ;
 int MB86A16_DCC1_TBEN ;
 int MB86A16_DCC1_TBO ;
 int MB86A16_DCCOUT ;
 int MB86A16_DCCOUT_DISEN ;
 int MB86A16_ERROR ;


 int dprintk (int ,int ,int,char*) ;
 int mb86a16_write (struct mb86a16_state*,int ,int) ;
 int verbose ;

__attribute__((used)) static int mb86a16_send_diseqc_burst(struct dvb_frontend *fe,
         enum fe_sec_mini_cmd burst)
{
 struct mb86a16_state *state = fe->demodulator_priv;

 switch (burst) {
 case 129:
  if (mb86a16_write(state, MB86A16_DCC1, MB86A16_DCC1_DISTA |
             MB86A16_DCC1_TBEN |
             MB86A16_DCC1_TBO) < 0)
   goto err;
  if (mb86a16_write(state, MB86A16_DCCOUT, MB86A16_DCCOUT_DISEN) < 0)
   goto err;
  break;
 case 128:
  if (mb86a16_write(state, MB86A16_DCC1, MB86A16_DCC1_DISTA |
             MB86A16_DCC1_TBEN) < 0)
   goto err;
  if (mb86a16_write(state, MB86A16_DCCOUT, MB86A16_DCCOUT_DISEN) < 0)
   goto err;
  break;
 }

 return 0;
err:
 dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
 return -EREMOTEIO;
}
