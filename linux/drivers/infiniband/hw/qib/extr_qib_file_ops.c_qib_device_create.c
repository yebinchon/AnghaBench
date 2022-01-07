
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int qib_diag_add (struct qib_devdata*) ;
 int qib_user_add (struct qib_devdata*) ;

int qib_device_create(struct qib_devdata *dd)
{
 int r, ret;

 r = qib_user_add(dd);
 ret = qib_diag_add(dd);
 if (r && !ret)
  ret = r;
 return ret;
}
