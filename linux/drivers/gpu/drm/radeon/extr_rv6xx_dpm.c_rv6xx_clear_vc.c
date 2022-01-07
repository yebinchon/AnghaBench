
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_set_vrc (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_clear_vc(struct radeon_device *rdev)
{
 r600_set_vrc(rdev, 0);
}
