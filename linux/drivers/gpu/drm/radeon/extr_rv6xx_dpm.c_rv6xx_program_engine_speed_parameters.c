
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_SPLLSTEPUNIT_DFLT ;
 int r600_vid_rt_set_ssu (struct radeon_device*,int ) ;
 int rv6xx_enable_engine_feedback_and_reference_sync (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_engine_speed_parameters(struct radeon_device *rdev)
{
 r600_vid_rt_set_ssu(rdev, R600_SPLLSTEPUNIT_DFLT);
 rv6xx_enable_engine_feedback_and_reference_sync(rdev);
}
