
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RADEON_MC_STATUS ;
 int RREG32 (int ) ;
 int pr_warn (char*,int ) ;
 int r420_pipes_init (struct radeon_device*) ;
 scalar_t__ rs400_mc_wait_for_idle (struct radeon_device*) ;

__attribute__((used)) static void rs400_gpu_init(struct radeon_device *rdev)
{

 r420_pipes_init(rdev);
 if (rs400_mc_wait_for_idle(rdev)) {
  pr_warn("rs400: Failed to wait MC idle while programming pipes. Bad things might happen. %08x\n",
   RREG32(RADEON_MC_STATUS));
 }
}
