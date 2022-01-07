
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int user_remove (struct hfi1_devdata*) ;

void hfi1_device_remove(struct hfi1_devdata *dd)
{
 user_remove(dd);
}
