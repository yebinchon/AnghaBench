
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int EINVAL ;
 int HZ ;
 int cxd2880_read_status (struct dvb_frontend*,int*) ;
 int cxd2880_set_frontend (struct dvb_frontend*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int cxd2880_tune(struct dvb_frontend *fe,
   bool retune,
   unsigned int mode_flags,
   unsigned int *delay,
   enum fe_status *status)
{
 int ret;

 if (!fe || !delay || !status) {
  pr_err("invalid arg.");
  return -EINVAL;
 }

 if (retune) {
  ret = cxd2880_set_frontend(fe);
  if (ret) {
   pr_err("cxd2880_set_frontend failed %d\n", ret);
   return ret;
  }
 }

 *delay = HZ / 5;

 return cxd2880_read_status(fe, status);
}
