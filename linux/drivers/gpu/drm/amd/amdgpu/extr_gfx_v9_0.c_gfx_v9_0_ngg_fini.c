
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_ngg_buf {int dummy; } ;
struct TYPE_5__ {int init; TYPE_3__* buf; } ;
struct TYPE_4__ {TYPE_2__ ngg; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;
struct TYPE_6__ {int gpu_addr; int bo; } ;


 int NGG_BUF_MAX ;
 int amdgpu_bo_free_kernel (int *,int *,int *) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int gfx_v9_0_ngg_fini(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < NGG_BUF_MAX; i++)
  amdgpu_bo_free_kernel(&adev->gfx.ngg.buf[i].bo,
          &adev->gfx.ngg.buf[i].gpu_addr,
          ((void*)0));

 memset(&adev->gfx.ngg.buf[0], 0,
   sizeof(struct amdgpu_ngg_buf) * NGG_BUF_MAX);

 adev->gfx.ngg.init = 0;

 return 0;
}
