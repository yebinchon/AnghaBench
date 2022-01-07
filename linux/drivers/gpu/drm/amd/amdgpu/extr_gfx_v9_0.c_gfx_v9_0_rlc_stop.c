
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int ) ;
 int gfx_v9_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v9_0_wait_for_rlc_serdes (struct amdgpu_device*) ;

void gfx_v9_0_rlc_stop(struct amdgpu_device *adev)
{
 WREG32_FIELD15(GC, 0, RLC_CNTL, RLC_ENABLE_F32, 0);
 gfx_v9_0_enable_gui_idle_interrupt(adev, 0);
 gfx_v9_0_wait_for_rlc_serdes(adev);
}
