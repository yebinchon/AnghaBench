
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct radeon_device {int dummy; } ;


 int GPIOPAD_A ;
 int GPIOPAD_EN ;
 int GPIOPAD_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void r600_voltage_control_deactivate_static_control(struct radeon_device *rdev,
          u64 mask)
{
 u32 gpio;

 gpio = RREG32(GPIOPAD_MASK);
 gpio &= ~mask;
 WREG32(GPIOPAD_MASK, gpio);

 gpio = RREG32(GPIOPAD_EN);
 gpio &= ~mask;
 WREG32(GPIOPAD_EN, gpio);

 gpio = RREG32(GPIOPAD_A);
 gpio &= ~mask;
 WREG32(GPIOPAD_A, gpio);
}
