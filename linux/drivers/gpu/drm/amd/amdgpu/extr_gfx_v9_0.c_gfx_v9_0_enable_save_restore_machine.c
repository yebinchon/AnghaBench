
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GC ;
 int RLC_SRM_CNTL ;
 int SRM_ENABLE ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v9_0_enable_save_restore_machine(struct amdgpu_device *adev)
{
 WREG32_FIELD15(GC, 0, RLC_SRM_CNTL, SRM_ENABLE, 1);
}
