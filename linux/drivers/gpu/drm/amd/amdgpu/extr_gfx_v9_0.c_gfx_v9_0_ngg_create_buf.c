
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_ngg_buf {int size; int bo; int bo_size; int gpu_addr; } ;
struct TYPE_3__ {int max_shader_engines; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {int dev; TYPE_2__ gfx; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int EINVAL ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int,int ,int ,int *,int *,int *) ;
 int amdgpu_bo_size (int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int gfx_v9_0_ngg_create_buf(struct amdgpu_device *adev,
       struct amdgpu_ngg_buf *ngg_buf,
       int size_se,
       int default_size_se)
{
 int r;

 if (size_se < 0) {
  dev_err(adev->dev, "Buffer size is invalid: %d\n", size_se);
  return -EINVAL;
 }
 size_se = size_se ? size_se : default_size_se;

 ngg_buf->size = size_se * adev->gfx.config.max_shader_engines;
 r = amdgpu_bo_create_kernel(adev, ngg_buf->size,
        PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM,
        &ngg_buf->bo,
        &ngg_buf->gpu_addr,
        ((void*)0));
 if (r) {
  dev_err(adev->dev, "(%d) failed to create NGG buffer\n", r);
  return r;
 }
 ngg_buf->bo_size = amdgpu_bo_size(ngg_buf->bo);

 return r;
}
