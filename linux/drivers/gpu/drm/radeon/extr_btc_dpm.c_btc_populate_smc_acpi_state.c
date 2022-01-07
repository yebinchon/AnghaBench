
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_7__ {TYPE_1__* levels; } ;
struct TYPE_8__ {TYPE_2__ ACPIState; } ;
struct TYPE_6__ {scalar_t__ ACIndex; } ;
typedef TYPE_3__ RV770_SMC_STATETABLE ;


 int cypress_populate_smc_acpi_state (struct radeon_device*,TYPE_3__*) ;

__attribute__((used)) static int btc_populate_smc_acpi_state(struct radeon_device *rdev,
           RV770_SMC_STATETABLE *table)
{
 int ret = cypress_populate_smc_acpi_state(rdev, table);

 if (ret == 0) {
  table->ACPIState.levels[0].ACIndex = 0;
  table->ACPIState.levels[1].ACIndex = 0;
  table->ACPIState.levels[2].ACIndex = 0;
 }

 return ret;
}
