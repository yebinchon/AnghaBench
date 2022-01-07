
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dev; } ;
struct amdgpu_bo_param {size_t size; int flags; int * resv; int type; int domain; int byte_align; } ;
struct amdgpu_bo {int tbo; } ;
typedef int bp ;


 int AMDGPU_GEM_CREATE_CPU_GTT_USWC ;
 int AMDGPU_GEM_CREATE_MQD_GFX9 ;
 int AMDGPU_GEM_DOMAIN_GTT ;
 int PAGE_SIZE ;
 int amdgpu_bo_create (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ;
 int amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_kmap (struct amdgpu_bo*,void**) ;
 int amdgpu_bo_pin (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int amdgpu_ttm_alloc_gart (int *) ;
 int dev_err (int ,char*,...) ;
 int memset (struct amdgpu_bo_param*,int ,int) ;
 int ttm_bo_type_kernel ;

int amdgpu_amdkfd_alloc_gtt_mem(struct kgd_dev *kgd, size_t size,
    void **mem_obj, uint64_t *gpu_addr,
    void **cpu_ptr, bool mqd_gfx9)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
 struct amdgpu_bo *bo = ((void*)0);
 struct amdgpu_bo_param bp;
 int r;
 void *cpu_ptr_tmp = ((void*)0);

 memset(&bp, 0, sizeof(bp));
 bp.size = size;
 bp.byte_align = PAGE_SIZE;
 bp.domain = AMDGPU_GEM_DOMAIN_GTT;
 bp.flags = AMDGPU_GEM_CREATE_CPU_GTT_USWC;
 bp.type = ttm_bo_type_kernel;
 bp.resv = ((void*)0);

 if (mqd_gfx9)
  bp.flags |= AMDGPU_GEM_CREATE_MQD_GFX9;

 r = amdgpu_bo_create(adev, &bp, &bo);
 if (r) {
  dev_err(adev->dev,
   "failed to allocate BO for amdkfd (%d)\n", r);
  return r;
 }


 r = amdgpu_bo_reserve(bo, 1);
 if (r) {
  dev_err(adev->dev, "(%d) failed to reserve bo for amdkfd\n", r);
  goto allocate_mem_reserve_bo_failed;
 }

 r = amdgpu_bo_pin(bo, AMDGPU_GEM_DOMAIN_GTT);
 if (r) {
  dev_err(adev->dev, "(%d) failed to pin bo for amdkfd\n", r);
  goto allocate_mem_pin_bo_failed;
 }

 r = amdgpu_ttm_alloc_gart(&bo->tbo);
 if (r) {
  dev_err(adev->dev, "%p bind failed\n", bo);
  goto allocate_mem_kmap_bo_failed;
 }

 r = amdgpu_bo_kmap(bo, &cpu_ptr_tmp);
 if (r) {
  dev_err(adev->dev,
   "(%d) failed to map bo to kernel for amdkfd\n", r);
  goto allocate_mem_kmap_bo_failed;
 }

 *mem_obj = bo;
 *gpu_addr = amdgpu_bo_gpu_offset(bo);
 *cpu_ptr = cpu_ptr_tmp;

 amdgpu_bo_unreserve(bo);

 return 0;

allocate_mem_kmap_bo_failed:
 amdgpu_bo_unpin(bo);
allocate_mem_pin_bo_failed:
 amdgpu_bo_unreserve(bo);
allocate_mem_reserve_bo_failed:
 amdgpu_bo_unref(&bo);

 return r;
}
