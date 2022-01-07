
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int kobj; } ;


 int kobject_put (int *) ;

void hfi1_free_devdata(struct hfi1_devdata *dd)
{
 kobject_put(&dd->kobj);
}
