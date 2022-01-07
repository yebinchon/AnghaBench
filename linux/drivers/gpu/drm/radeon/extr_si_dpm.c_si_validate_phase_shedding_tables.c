
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_phase_shedding_limits_table {int count; } ;
struct radeon_device {int dummy; } ;
struct atom_voltage_table {int mask_low; int count; } ;


 int hweight32 (int) ;

__attribute__((used)) static bool si_validate_phase_shedding_tables(struct radeon_device *rdev,
           const struct atom_voltage_table *table,
           const struct radeon_phase_shedding_limits_table *limits)
{
 u32 data, num_bits, num_levels;

 if ((table == ((void*)0)) || (limits == ((void*)0)))
  return 0;

 data = table->mask_low;

 num_bits = hweight32(data);

 if (num_bits == 0)
  return 0;

 num_levels = (1 << num_bits);

 if (table->count != num_levels)
  return 0;

 if (limits->count != (num_levels - 1))
  return 0;

 return 1;
}
