
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int user_add (struct hfi1_devdata*) ;

int hfi1_device_create(struct hfi1_devdata *dd)
{
 return user_add(dd);
}
