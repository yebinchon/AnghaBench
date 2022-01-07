
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int LOAD_BALANCE_ENABLE ;
 int RLC_LB_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int gfx_v6_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int mmSPI_LB_CU_MASK ;

__attribute__((used)) static void gfx_v6_0_enable_lbpw(struct amdgpu_device *adev, bool enable)
{
 WREG32_FIELD(RLC_LB_CNTL, LOAD_BALANCE_ENABLE, enable ? 1 : 0);

 if (!enable) {
  gfx_v6_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
  WREG32(mmSPI_LB_CU_MASK, 0x00ff);
 }
}
