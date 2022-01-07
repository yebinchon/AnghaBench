
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dev_sku_info { ____Placeholder_dev_sku_info } dev_sku_info ;
__attribute__((used)) static inline const char *get_sku_info(enum dev_sku_info info)
{
 switch (info) {
 case 133:
  return "SKU1";
 case 132:
  return "SKU2";
 case 131:
  return "SKU3";
 case 130:
  return "SKU4";
 case 128:
  return "SKUVF";
 case 129:
 default:
  break;
 }
 return "Unknown SKU";
}
