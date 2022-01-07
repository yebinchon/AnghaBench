
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_hw_device_data {int dummy; } ;
typedef enum dev_sku_info { ____Placeholder_dev_sku_info } dev_sku_info ;


 int DEV_SKU_2 ;
 int DEV_SKU_4 ;
 int DEV_SKU_UNKNOWN ;
 int get_num_aes (struct adf_hw_device_data*) ;

__attribute__((used)) static enum dev_sku_info get_sku(struct adf_hw_device_data *self)
{
 int aes = get_num_aes(self);

 if (aes == 8)
  return DEV_SKU_2;
 else if (aes == 10)
  return DEV_SKU_4;

 return DEV_SKU_UNKNOWN;
}
