
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_hw_device_data {int dummy; } ;
typedef enum dev_sku_info { ____Placeholder_dev_sku_info } dev_sku_info ;


 int DEV_SKU_VF ;

__attribute__((used)) static enum dev_sku_info get_sku(struct adf_hw_device_data *self)
{
 return DEV_SKU_VF;
}
