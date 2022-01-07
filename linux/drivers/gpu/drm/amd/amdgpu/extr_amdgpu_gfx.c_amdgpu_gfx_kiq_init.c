
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_kiq {int eop_obj; int eop_gpu_addr; } ;
struct TYPE_2__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {int dev; TYPE_1__ gfx; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,unsigned int,int ,int ,int *,int *,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_reserve (int ,int) ;
 int amdgpu_bo_unreserve (int ) ;
 int dev_warn (int ,char*,int) ;
 int memset (int *,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

int amdgpu_gfx_kiq_init(struct amdgpu_device *adev,
   unsigned hpd_size)
{
 int r;
 u32 *hpd;
 struct amdgpu_kiq *kiq = &adev->gfx.kiq;

 r = amdgpu_bo_create_kernel(adev, hpd_size, PAGE_SIZE,
        AMDGPU_GEM_DOMAIN_GTT, &kiq->eop_obj,
        &kiq->eop_gpu_addr, (void **)&hpd);
 if (r) {
  dev_warn(adev->dev, "failed to create KIQ bo (%d).\n", r);
  return r;
 }

 memset(hpd, 0, hpd_size);

 r = amdgpu_bo_reserve(kiq->eop_obj, 1);
 if (unlikely(r != 0))
  dev_warn(adev->dev, "(%d) reserve kiq eop bo failed\n", r);
 amdgpu_bo_kunmap(kiq->eop_obj);
 amdgpu_bo_unreserve(kiq->eop_obj);

 return 0;
}
