
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int BSP (int ) ;
 int BSU (int ) ;
 int CG_BSP ;
 int WREG32 (int ,int) ;

void r600_set_bsp(struct radeon_device *rdev, u32 u, u32 p)
{
 WREG32(CG_BSP, BSP(p) | BSU(u));
}
