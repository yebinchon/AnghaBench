
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pp_hwmgr {int dummy; } ;
struct phm_clock_and_voltage_limits {unsigned long sclk; unsigned long mclk; unsigned long vddc; unsigned long vddci; } ;
struct TYPE_5__ {TYPE_1__* entries; } ;
struct TYPE_4__ {int usVddci; int usVddc; int usMclkLow; scalar_t__ ucMclkHigh; int usSclkLow; scalar_t__ ucSclkHigh; } ;
typedef TYPE_2__ ATOM_PPLIB_Clock_Voltage_Limit_Table ;


 unsigned long le16_to_cpu (int ) ;

__attribute__((used)) static int get_clock_voltage_limit(struct pp_hwmgr *hwmgr,
   struct phm_clock_and_voltage_limits *limits,
   const ATOM_PPLIB_Clock_Voltage_Limit_Table *table)
{
 limits->sclk = ((unsigned long)table->entries[0].ucSclkHigh << 16) |
   le16_to_cpu(table->entries[0].usSclkLow);
 limits->mclk = ((unsigned long)table->entries[0].ucMclkHigh << 16) |
   le16_to_cpu(table->entries[0].usMclkLow);
 limits->vddc = (unsigned long)le16_to_cpu(table->entries[0].usVddc);
 limits->vddci = (unsigned long)le16_to_cpu(table->entries[0].usVddci);

 return 0;
}
