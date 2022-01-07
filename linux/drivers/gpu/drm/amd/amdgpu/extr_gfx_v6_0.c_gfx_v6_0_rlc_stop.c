
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int gfx_v6_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v6_0_wait_for_rlc_serdes (struct amdgpu_device*) ;
 int mmRLC_CNTL ;

__attribute__((used)) static void gfx_v6_0_rlc_stop(struct amdgpu_device *adev)
{
 WREG32(mmRLC_CNTL, 0);

 gfx_v6_0_enable_gui_idle_interrupt(adev, 0);
 gfx_v6_0_wait_for_rlc_serdes(adev);
}
