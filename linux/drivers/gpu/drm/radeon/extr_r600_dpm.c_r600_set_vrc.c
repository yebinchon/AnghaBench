
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_FTV ;
 int WREG32 (int ,int ) ;

void r600_set_vrc(struct radeon_device *rdev, u32 vrv)
{
 WREG32(CG_FTV, vrv);
}
