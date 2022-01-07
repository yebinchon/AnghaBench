
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeon_phase_shedding_limits_table {unsigned int count; TYPE_1__* entries; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ sclk; } ;



__attribute__((used)) static void ci_populate_phase_value_based_on_sclk(struct radeon_device *rdev,
        const struct radeon_phase_shedding_limits_table *limits,
        u32 sclk,
        u32 *phase_shedding)
{
 unsigned int i;

 *phase_shedding = 1;

 for (i = 0; i < limits->count; i++) {
  if (sclk < limits->entries[i].sclk) {
   *phase_shedding = i;
   break;
  }
 }
}
