
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct amdgpu_phase_shedding_limits_table {unsigned int count; TYPE_1__* entries; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ phase_settings; } ;
struct TYPE_4__ {scalar_t__ voltage; scalar_t__ sclk; scalar_t__ mclk; } ;
typedef TYPE_2__ SISLANDS_SMC_VOLTAGE_VALUE ;



__attribute__((used)) static int si_populate_phase_shedding_value(struct amdgpu_device *adev,
         const struct amdgpu_phase_shedding_limits_table *limits,
         u16 voltage, u32 sclk, u32 mclk,
         SISLANDS_SMC_VOLTAGE_VALUE *smc_voltage)
{
 unsigned int i;

 for (i = 0; i < limits->count; i++) {
  if ((voltage <= limits->entries[i].voltage) &&
      (sclk <= limits->entries[i].sclk) &&
      (mclk <= limits->entries[i].mclk))
   break;
 }

 smc_voltage->phase_settings = (u8)i;

 return 0;
}
