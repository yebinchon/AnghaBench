
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct atom_voltage_table {unsigned int count; TYPE_1__* entries; } ;
struct TYPE_5__ {int * lowSMIO; scalar_t__* highSMIO; } ;
struct TYPE_4__ {int smio_low; } ;
typedef TYPE_2__ NISLANDS_SMC_STATETABLE ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static void ni_populate_smc_voltage_table(struct radeon_device *rdev,
       struct atom_voltage_table *voltage_table,
       NISLANDS_SMC_STATETABLE *table)
{
 unsigned int i;

 for (i = 0; i < voltage_table->count; i++) {
  table->highSMIO[i] = 0;
  table->lowSMIO[i] |= cpu_to_be32(voltage_table->entries[i].smio_low);
 }
}
