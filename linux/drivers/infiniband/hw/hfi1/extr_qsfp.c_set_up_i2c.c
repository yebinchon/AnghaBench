
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
struct hfi1_asic_data {void* i2c_bus1; void* i2c_bus0; } ;


 int ENOMEM ;
 void* init_i2c_bus (struct hfi1_devdata*,struct hfi1_asic_data*,int) ;

int set_up_i2c(struct hfi1_devdata *dd, struct hfi1_asic_data *ad)
{
 ad->i2c_bus0 = init_i2c_bus(dd, ad, 0);
 ad->i2c_bus1 = init_i2c_bus(dd, ad, 1);
 if (!ad->i2c_bus0 || !ad->i2c_bus1)
  return -ENOMEM;
 return 0;
}
