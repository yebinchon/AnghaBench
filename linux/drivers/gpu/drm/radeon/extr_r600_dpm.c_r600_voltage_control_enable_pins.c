
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct radeon_device {int dummy; } ;


 int LOWER_GPIO_ENABLE ;
 int UPPER_GPIO_ENABLE ;
 int WREG32 (int ,int) ;
 int upper_32_bits (int) ;

void r600_voltage_control_enable_pins(struct radeon_device *rdev,
          u64 mask)
{
 WREG32(LOWER_GPIO_ENABLE, mask & 0xffffffff);
 WREG32(UPPER_GPIO_ENABLE, upper_32_bits(mask));
}
