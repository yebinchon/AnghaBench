
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int rlc_autoload_ptr; int rlc_autoload_gpu_addr; int rlc_autoload_bo; } ;
struct TYPE_3__ {TYPE_2__ rlc; } ;
struct amdgpu_device {int dev; TYPE_1__ gfx; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,int ,int ,int ,int *,int *,void**) ;
 int dev_err (int ,char*,int) ;
 int gfx_v10_0_calc_toc_total_size (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v10_0_rlc_backdoor_autoload_buffer_init(struct amdgpu_device *adev)
{
 int r;
 uint32_t total_size;

 total_size = gfx_v10_0_calc_toc_total_size(adev);

 r = amdgpu_bo_create_reserved(adev, total_size, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_GTT,
          &adev->gfx.rlc.rlc_autoload_bo,
          &adev->gfx.rlc.rlc_autoload_gpu_addr,
          (void **)&adev->gfx.rlc.rlc_autoload_ptr);
 if (r) {
  dev_err(adev->dev, "(%d) failed to create fw autoload bo\n", r);
  return r;
 }

 return 0;
}
