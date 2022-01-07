
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int HZ ;
 int ds3000_read_status (struct dvb_frontend*,int*) ;
 int ds3000_set_frontend (struct dvb_frontend*) ;

__attribute__((used)) static int ds3000_tune(struct dvb_frontend *fe,
   bool re_tune,
   unsigned int mode_flags,
   unsigned int *delay,
   enum fe_status *status)
{
 if (re_tune) {
  int ret = ds3000_set_frontend(fe);
  if (ret)
   return ret;
 }

 *delay = HZ / 5;

 return ds3000_read_status(fe, status);
}
