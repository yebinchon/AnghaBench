
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 scalar_t__ CHIP_RV740 ;
 int rv730_program_memory_timing_parameters (struct radeon_device*,struct radeon_ps*) ;
 int rv770_program_memory_timing_parameters (struct radeon_device*,struct radeon_ps*) ;

__attribute__((used)) static void r7xx_program_memory_timing_parameters(struct radeon_device *rdev,
        struct radeon_ps *radeon_new_state)
{
 if ((rdev->family == CHIP_RV730) ||
     (rdev->family == CHIP_RV710) ||
     (rdev->family == CHIP_RV740))
  rv730_program_memory_timing_parameters(rdev, radeon_new_state);
 else
  rv770_program_memory_timing_parameters(rdev, radeon_new_state);
}
