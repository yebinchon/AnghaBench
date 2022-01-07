
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_INTGFX_MISC ;
 int WREG32_P (int ,int ,int) ;

__attribute__((used)) static void rs780_disable_vbios_powersaving(struct radeon_device *rdev)
{
 WREG32_P(CG_INTGFX_MISC, 0, ~0xFFF00000);
}
