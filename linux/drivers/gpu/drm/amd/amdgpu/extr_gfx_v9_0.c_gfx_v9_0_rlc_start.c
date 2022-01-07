
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rlc_fw_version; } ;
struct amdgpu_device {int flags; TYPE_1__ gfx; } ;


 int AMD_IS_APU ;
 int DRM_INFO (char*,int,int ) ;
 int GC ;
 int RLC_CNTL ;
 int RLC_ENABLE_F32 ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int gfx_v9_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int mmRLC_GPM_GENERAL_12 ;
 int mmRLC_GPM_GENERAL_6 ;
 int mmRLC_GPM_TIMER_INT_3 ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v9_0_rlc_start(struct amdgpu_device *adev)
{




 WREG32_FIELD15(GC, 0, RLC_CNTL, RLC_ENABLE_F32, 1);
 udelay(50);


 if (!(adev->flags & AMD_IS_APU)) {
  gfx_v9_0_enable_gui_idle_interrupt(adev, 1);
  udelay(50);
 }
}
