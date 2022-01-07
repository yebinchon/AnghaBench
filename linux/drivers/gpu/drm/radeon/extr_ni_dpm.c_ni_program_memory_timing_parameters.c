
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int NISLANDS_DRIVER_STATE_ARB_INDEX ;
 int ni_do_program_memory_timing_parameters (struct radeon_device*,struct radeon_ps*,int ) ;

__attribute__((used)) static int ni_program_memory_timing_parameters(struct radeon_device *rdev,
            struct radeon_ps *radeon_new_state)
{
 return ni_do_program_memory_timing_parameters(rdev, radeon_new_state,
            NISLANDS_DRIVER_STATE_ARB_INDEX);
}
