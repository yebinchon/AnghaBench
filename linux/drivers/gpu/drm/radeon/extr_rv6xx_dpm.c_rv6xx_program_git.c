
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_GICST_DFLT ;
 int r600_set_git (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_program_git(struct radeon_device *rdev)
{
 r600_set_git(rdev, R600_GICST_DFLT);
}
