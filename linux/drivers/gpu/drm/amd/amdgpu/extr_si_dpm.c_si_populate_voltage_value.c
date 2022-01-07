
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct atom_voltage_table {unsigned int count; TYPE_1__* entries; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_5__ {int value; scalar_t__ index; } ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_2__ SISLANDS_SMC_VOLTAGE_VALUE ;


 int EINVAL ;
 int cpu_to_be16 (scalar_t__) ;

__attribute__((used)) static int si_populate_voltage_value(struct amdgpu_device *adev,
         const struct atom_voltage_table *table,
         u16 value, SISLANDS_SMC_VOLTAGE_VALUE *voltage)
{
 unsigned int i;

 for (i = 0; i < table->count; i++) {
  if (value <= table->entries[i].value) {
   voltage->index = (u8)i;
   voltage->value = cpu_to_be16(table->entries[i].value);
   break;
  }
 }

 if (i >= table->count)
  return -EINVAL;

 return 0;
}
