
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int (* start ) (struct amdgpu_device*) ;int (* reset ) (struct amdgpu_device*) ;int (* stop ) (struct amdgpu_device*) ;} ;


 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfx_v8_0_init_csb (struct amdgpu_device*) ;
 int gfx_v8_0_init_pg (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;
 int stub3 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v8_0_rlc_resume(struct amdgpu_device *adev)
{
 if (amdgpu_sriov_vf(adev)) {
  gfx_v8_0_init_csb(adev);
  return 0;
 }

 adev->gfx.rlc.funcs->stop(adev);
 adev->gfx.rlc.funcs->reset(adev);
 gfx_v8_0_init_pg(adev);
 adev->gfx.rlc.funcs->start(adev);

 return 0;
}
