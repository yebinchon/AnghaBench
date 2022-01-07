
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int ddev; } ;


 int radeon_combios_initialize_bios_scratch_regs (int ) ;

int radeon_combios_init(struct radeon_device *rdev)
{
 radeon_combios_initialize_bios_scratch_regs(rdev->ddev);
 return 0;
}
