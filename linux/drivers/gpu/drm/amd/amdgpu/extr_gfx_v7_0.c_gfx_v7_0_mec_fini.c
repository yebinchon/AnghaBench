
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hpd_eop_obj; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;

__attribute__((used)) static void gfx_v7_0_mec_fini(struct amdgpu_device *adev)
{
 amdgpu_bo_free_kernel(&adev->gfx.mec.hpd_eop_obj, ((void*)0), ((void*)0));
}
