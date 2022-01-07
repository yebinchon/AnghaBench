
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int vrc; } ;
struct radeon_device {int dummy; } ;


 int CG_FTV ;
 int WREG32 (int ,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static void si_program_vc(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 WREG32(CG_FTV, pi->vrc);
}
