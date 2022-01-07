
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct pp_hwmgr {int dummy; } ;
struct phm_cac_tdp_table {int usMaximumPowerDeliveryLimit; void* usHighCACLeakage; void* usLowCACLeakage; void* usSmallPowerLimit; void* usBatteryPowerLimit; void* usTDC; void* usConfigurableTDP; void* usTDP; } ;
struct TYPE_3__ {int usHighCACLeakage; int usLowCACLeakage; int usSmallPowerLimit; int usBatteryPowerLimit; int usTDC; int usConfigurableTDP; int usTDP; } ;
typedef TYPE_1__ ATOM_PowerTune_Table ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct phm_cac_tdp_table* kzalloc (unsigned long,int ) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static int get_cac_tdp_table(struct pp_hwmgr *hwmgr,
    struct phm_cac_tdp_table **ptable,
    const ATOM_PowerTune_Table *table,
    uint16_t us_maximum_power_delivery_limit)
{
 unsigned long table_size;
 struct phm_cac_tdp_table *tdp_table;

 table_size = sizeof(unsigned long) + sizeof(struct phm_cac_tdp_table);

 tdp_table = kzalloc(table_size, GFP_KERNEL);
 if (((void*)0) == tdp_table)
  return -ENOMEM;

 tdp_table->usTDP = le16_to_cpu(table->usTDP);
 tdp_table->usConfigurableTDP = le16_to_cpu(table->usConfigurableTDP);
 tdp_table->usTDC = le16_to_cpu(table->usTDC);
 tdp_table->usBatteryPowerLimit = le16_to_cpu(table->usBatteryPowerLimit);
 tdp_table->usSmallPowerLimit = le16_to_cpu(table->usSmallPowerLimit);
 tdp_table->usLowCACLeakage = le16_to_cpu(table->usLowCACLeakage);
 tdp_table->usHighCACLeakage = le16_to_cpu(table->usHighCACLeakage);
 tdp_table->usMaximumPowerDeliveryLimit = us_maximum_power_delivery_limit;

 *ptable = tdp_table;

 return 0;
}
