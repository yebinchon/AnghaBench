
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dev_type { ____Placeholder_dev_type } dev_type ;


 int DEV_UNKNOWN ;
 int DEV_X2 ;
 int DEV_X4 ;


 int SDRAM_MCOPT1_WDTH_MASK ;

__attribute__((used)) static enum dev_type ppc4xx_edac_get_dtype(u32 mcopt1)
{
 switch (mcopt1 & SDRAM_MCOPT1_WDTH_MASK) {
 case 129:
  return DEV_X2;
 case 128:
  return DEV_X4;
 default:
  return DEV_UNKNOWN;
 }
}
