
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dev; } ;
struct amdgpu_bo_param {size_t size; int byte_align; int * resv; int type; int flags; int domain; } ;
struct amdgpu_bo {int dummy; } ;
typedef int bp ;


 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ;
 int AMDGPU_GEM_DOMAIN_GWS ;
 int amdgpu_bo_create (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ;
 int dev_err (int ,char*,int) ;
 int memset (struct amdgpu_bo_param*,int ,int) ;
 int ttm_bo_type_device ;

int amdgpu_amdkfd_alloc_gws(struct kgd_dev *kgd, size_t size,
    void **mem_obj)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
 struct amdgpu_bo *bo = ((void*)0);
 struct amdgpu_bo_param bp;
 int r;

 memset(&bp, 0, sizeof(bp));
 bp.size = size;
 bp.byte_align = 1;
 bp.domain = AMDGPU_GEM_DOMAIN_GWS;
 bp.flags = AMDGPU_GEM_CREATE_NO_CPU_ACCESS;
 bp.type = ttm_bo_type_device;
 bp.resv = ((void*)0);

 r = amdgpu_bo_create(adev, &bp, &bo);
 if (r) {
  dev_err(adev->dev,
   "failed to allocate gws BO for amdkfd (%d)\n", r);
  return r;
 }

 *mem_obj = bo;
 return 0;
}
