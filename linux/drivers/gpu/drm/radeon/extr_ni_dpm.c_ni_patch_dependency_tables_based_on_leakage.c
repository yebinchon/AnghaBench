
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vddc_dependency_on_mclk; int vddc_dependency_on_sclk; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;


 int ni_patch_single_dependency_table_based_on_leakage (struct radeon_device*,int *) ;

__attribute__((used)) static int ni_patch_dependency_tables_based_on_leakage(struct radeon_device *rdev)
{
 int ret = 0;

 ret = ni_patch_single_dependency_table_based_on_leakage(rdev,
        &rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk);

 ret = ni_patch_single_dependency_table_based_on_leakage(rdev,
        &rdev->pm.dpm.dyn_state.vddc_dependency_on_mclk);
 return ret;
}
