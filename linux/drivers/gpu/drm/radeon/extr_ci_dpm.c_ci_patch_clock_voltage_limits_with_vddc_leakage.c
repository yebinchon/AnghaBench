
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_device {int dummy; } ;
struct radeon_clock_and_voltage_limits {int vddci; int vddc; } ;


 int ci_patch_with_vddc_leakage (struct radeon_device*,int *) ;
 int ci_patch_with_vddci_leakage (struct radeon_device*,int *) ;

__attribute__((used)) static void ci_patch_clock_voltage_limits_with_vddc_leakage(struct radeon_device *rdev,
           struct radeon_clock_and_voltage_limits *table)
{
 if (table) {
  ci_patch_with_vddc_leakage(rdev, (u16 *)&table->vddc);
  ci_patch_with_vddci_leakage(rdev, (u16 *)&table->vddci);
 }
}
