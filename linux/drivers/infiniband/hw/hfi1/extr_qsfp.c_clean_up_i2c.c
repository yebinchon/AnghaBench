
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
struct hfi1_asic_data {int * i2c_bus1; int * i2c_bus0; } ;


 int clean_i2c_bus (int *) ;

void clean_up_i2c(struct hfi1_devdata *dd, struct hfi1_asic_data *ad)
{
 if (!ad)
  return;
 clean_i2c_bus(ad->i2c_bus0);
 ad->i2c_bus0 = ((void*)0);
 clean_i2c_bus(ad->i2c_bus1);
 ad->i2c_bus1 = ((void*)0);
}
