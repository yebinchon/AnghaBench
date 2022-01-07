
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {int dev; } ;


 int cx24120_read_status (struct dvb_frontend*,int*) ;
 int cx24120_set_frontend (struct dvb_frontend*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cx24120_tune(struct dvb_frontend *fe, bool re_tune,
   unsigned int mode_flags, unsigned int *delay,
   enum fe_status *status)
{
 struct cx24120_state *state = fe->demodulator_priv;
 int ret;

 dev_dbg(&state->i2c->dev, "(%d)\n", re_tune);



 if (re_tune) {
  ret = cx24120_set_frontend(fe);
  if (ret)
   return ret;
 }

 return cx24120_read_status(fe, status);
}
