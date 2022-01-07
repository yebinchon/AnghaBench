
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RLC_CNTL__RLC_ENABLE_F32_MASK ;
 int WREG32 (int ,int ) ;
 int gfx_v6_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int mmRLC_CNTL ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v6_0_rlc_start(struct amdgpu_device *adev)
{
 WREG32(mmRLC_CNTL, RLC_CNTL__RLC_ENABLE_F32_MASK);

 gfx_v6_0_enable_gui_idle_interrupt(adev, 1);

 udelay(50);
}
