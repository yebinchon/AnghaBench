
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int GRBM_SOFT_RESET ;
 int SOFT_RESET_RLC ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v9_0_rlc_reset(struct amdgpu_device *adev)
{
 WREG32_FIELD15(GC, 0, GRBM_SOFT_RESET, SOFT_RESET_RLC, 1);
 udelay(50);
 WREG32_FIELD15(GC, 0, GRBM_SOFT_RESET, SOFT_RESET_RLC, 0);
 udelay(50);
}
