
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_hw_device_data {int fuses; } ;
typedef enum dev_sku_info { ____Placeholder_dev_sku_info } dev_sku_info ;






 int ADF_DH895XCC_FUSECTL_SKU_MASK ;
 int ADF_DH895XCC_FUSECTL_SKU_SHIFT ;
 int DEV_SKU_1 ;
 int DEV_SKU_2 ;
 int DEV_SKU_3 ;
 int DEV_SKU_4 ;
 int DEV_SKU_UNKNOWN ;

__attribute__((used)) static enum dev_sku_info get_sku(struct adf_hw_device_data *self)
{
 int sku = (self->fuses & ADF_DH895XCC_FUSECTL_SKU_MASK)
     >> ADF_DH895XCC_FUSECTL_SKU_SHIFT;

 switch (sku) {
 case 131:
  return DEV_SKU_1;
 case 130:
  return DEV_SKU_2;
 case 129:
  return DEV_SKU_3;
 case 128:
  return DEV_SKU_4;
 default:
  return DEV_SKU_UNKNOWN;
 }
 return DEV_SKU_UNKNOWN;
}
