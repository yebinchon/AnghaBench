
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_FTV ;
 int WREG32 (int ,int ) ;

void rv770_clear_vc(struct radeon_device *rdev)
{
 WREG32(CG_FTV, 0);
}
