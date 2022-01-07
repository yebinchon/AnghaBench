
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int WREG32_FIELD (int ,int ,int ) ;
 int gfx_v8_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v8_0_wait_for_rlc_serdes (struct amdgpu_device*) ;

__attribute__((used)) static void gfx_v8_0_rlc_stop(struct amdgpu_device *adev)
{
 WREG32_FIELD(RLC_CNTL, RLC_ENABLE_F32, 0);

 gfx_v8_0_enable_gui_idle_interrupt(adev, 0);
 gfx_v8_0_wait_for_rlc_serdes(adev);
}
