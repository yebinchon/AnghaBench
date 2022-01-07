
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int qib_diag_remove (struct qib_devdata*) ;
 int qib_user_remove (struct qib_devdata*) ;

void qib_device_remove(struct qib_devdata *dd)
{
 qib_user_remove(dd);
 qib_diag_remove(dd);
}
