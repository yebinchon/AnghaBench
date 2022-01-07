
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct atom_voltage_table {size_t count; TYPE_2__* entries; scalar_t__ phase_delay; scalar_t__ mask_low; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_clock_voltage_dependency_table {size_t count; TYPE_1__* entries; } ;
struct TYPE_4__ {scalar_t__ smio_low; int value; } ;
struct TYPE_3__ {int v; } ;


 int EINVAL ;

__attribute__((used)) static int si_get_svi2_voltage_table(struct amdgpu_device *adev,
         struct amdgpu_clock_voltage_dependency_table *voltage_dependency_table,
         struct atom_voltage_table *voltage_table)
{
 u32 i;

 if (voltage_dependency_table == ((void*)0))
  return -EINVAL;

 voltage_table->mask_low = 0;
 voltage_table->phase_delay = 0;

 voltage_table->count = voltage_dependency_table->count;
 for (i = 0; i < voltage_table->count; i++) {
  voltage_table->entries[i].value = voltage_dependency_table->entries[i].v;
  voltage_table->entries[i].smio_low = 0;
 }

 return 0;
}
