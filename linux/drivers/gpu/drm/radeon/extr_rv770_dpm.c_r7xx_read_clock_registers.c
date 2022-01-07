
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 scalar_t__ CHIP_RV740 ;
 int rv730_read_clock_registers (struct radeon_device*) ;
 int rv740_read_clock_registers (struct radeon_device*) ;
 int rv770_read_clock_registers (struct radeon_device*) ;

__attribute__((used)) static void r7xx_read_clock_registers(struct radeon_device *rdev)
{
 if (rdev->family == CHIP_RV740)
  rv740_read_clock_registers(rdev);
 else if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  rv730_read_clock_registers(rdev);
 else
  rv770_read_clock_registers(rdev);
}
