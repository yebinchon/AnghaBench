
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 unsigned int FE_TUNE_MODE_ONESHOT ;
 int dprintk (char*) ;
 int s921_read_status (struct dvb_frontend*,int*) ;
 int s921_set_frontend (struct dvb_frontend*) ;

__attribute__((used)) static int s921_tune(struct dvb_frontend *fe,
   bool re_tune,
   unsigned int mode_flags,
   unsigned int *delay,
   enum fe_status *status)
{
 int rc = 0;

 dprintk("\n");

 if (re_tune)
  rc = s921_set_frontend(fe);

 if (!(mode_flags & FE_TUNE_MODE_ONESHOT))
  s921_read_status(fe, status);

 return rc;
}
