
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
struct TYPE_4__ {int (* stop ) (struct amdgpu_device*) ;} ;


 int gfx_v6_0_cp_enable (struct amdgpu_device*,int) ;
 int gfx_v6_0_fini_pg (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v6_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gfx_v6_0_cp_enable(adev, 0);
 adev->gfx.rlc.funcs->stop(adev);
 gfx_v6_0_fini_pg(adev);

 return 0;
}
