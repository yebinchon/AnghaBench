
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int WREG32_FIELD (int ,int ,int) ;
 int gfx_v8_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v8_0_rlc_start(struct amdgpu_device *adev)
{
 WREG32_FIELD(RLC_CNTL, RLC_ENABLE_F32, 1);


 if (!(adev->flags & AMD_IS_APU))
  gfx_v8_0_enable_gui_idle_interrupt(adev, 1);

 udelay(50);
}
