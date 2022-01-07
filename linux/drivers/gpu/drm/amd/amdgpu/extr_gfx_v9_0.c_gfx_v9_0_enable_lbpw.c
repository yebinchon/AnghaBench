
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int LOAD_BALANCE_ENABLE ;
 int RLC_LB_CNTL ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v9_0_enable_lbpw(struct amdgpu_device *adev, bool enable)
{
 WREG32_FIELD15(GC, 0, RLC_LB_CNTL, LOAD_BALANCE_ENABLE, enable ? 1 : 0);
}
