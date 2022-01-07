
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl {int tune_time; } ;
struct dvb_frontend {struct mxl* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int HZ ;
 int jiffies ;
 int read_status (struct dvb_frontend*,int*) ;
 int set_parameters (struct dvb_frontend*) ;

__attribute__((used)) static int tune(struct dvb_frontend *fe, bool re_tune,
  unsigned int mode_flags,
  unsigned int *delay, enum fe_status *status)
{
 struct mxl *state = fe->demodulator_priv;
 int r = 0;

 *delay = HZ / 2;
 if (re_tune) {
  r = set_parameters(fe);
  if (r)
   return r;
  state->tune_time = jiffies;
 }

 return read_status(fe, status);
}
