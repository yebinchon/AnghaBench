
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int aspm_disable_all (struct hfi1_devdata*) ;
 int aspm_enable (struct hfi1_devdata*) ;

void aspm_exit(struct hfi1_devdata *dd)
{
 aspm_disable_all(dd);


 aspm_enable(dd);
}
