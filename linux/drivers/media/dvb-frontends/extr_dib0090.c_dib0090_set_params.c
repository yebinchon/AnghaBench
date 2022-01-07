
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {scalar_t__ tune_state; } ;


 scalar_t__ CT_TUNER_START ;
 scalar_t__ CT_TUNER_STOP ;
 int FE_CALLBACK_TIME_NEVER ;
 int dib0090_tune (struct dvb_frontend*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dib0090_set_params(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 u32 ret;

 state->tune_state = CT_TUNER_START;

 do {
  ret = dib0090_tune(fe);
  if (ret == FE_CALLBACK_TIME_NEVER)
   break;
  ret = 10 * (ret + 99)/100;
  usleep_range(ret * 1000, (ret + 1) * 1000);
 } while (state->tune_state != CT_TUNER_STOP);

 return 0;
}
