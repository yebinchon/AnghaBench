
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int disable_data_vls (struct hfi1_devdata*) ;
 int drain_data_vls (struct hfi1_devdata*) ;

int stop_drain_data_vls(struct hfi1_devdata *dd)
{
 int ret;

 ret = disable_data_vls(dd);
 if (ret == 0)
  drain_data_vls(dd);

 return ret;
}
