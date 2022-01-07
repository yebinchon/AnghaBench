
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct amdgpu_device {int dev; } ;
struct amdgpu_bo_param {unsigned long size; int byte_align; int * resv; int type; int flags; int domain; } ;
struct amdgpu_bo {int tbo; } ;
typedef int bp ;


 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ;
 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ;
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ;
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

int amdgpu_bo_create_reserved(struct amdgpu_device *adev,
         unsigned long size, int align,
         u32 domain, struct amdgpu_bo **bo_ptr,
         u64 *gpu_addr, void **cpu_addr)
{
 struct amdgpu_bo_param bp;
 bool free = 0;
 int r;

 if (!size) {
  amdgpu_bo_unref(bo_ptr);
  return 0;
 }

 memset(&bp, 0, sizeof(bp));
 bp.size = size;
 bp.byte_align = align;
 bp.domain = domain;
 bp.flags = cpu_addr ? AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED
  : AMDGPU_GEM_CREATE_NO_CPU_ACCESS;
 bp.flags |= AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS;
 bp.type = ttm_bo_type_kernel;
 bp.resv = ((void*)0);

 if (!*bo_ptr) {
  r = amdgpu_bo_create(adev, &bp, bo_ptr);
  if (r) {
   dev_err(adev->dev, "(%d) failed to allocate kernel bo\n",
    r);
   return r;
  }
  free = 1;
 }

 r = amdgpu_bo_reserve(*bo_ptr, 0);
 if (r) {
  dev_err(adev->dev, "(%d) failed to reserve kernel bo\n", r);
  goto error_free;
 }

 r = amdgpu_bo_pin(*bo_ptr, domain);
 if (r) {
  dev_err(adev->dev, "(%d) kernel bo pin failed\n", r);
  goto error_unreserve;
 }

 r = amdgpu_ttm_alloc_gart(&(*bo_ptr)->tbo);
 if (r) {
  dev_err(adev->dev, "%p bind failed\n", *bo_ptr);
  goto error_unpin;
 }

 if (gpu_addr)
  *gpu_addr = amdgpu_bo_gpu_offset(*bo_ptr);

 if (cpu_addr) {
  r = amdgpu_bo_kmap(*bo_ptr, cpu_addr);
  if (r) {
   dev_err(adev->dev, "(%d) kernel bo map failed\n", r);
   goto error_unpin;
  }
 }

 return 0;

error_unpin:
 amdgpu_bo_unpin(*bo_ptr);
error_unreserve:
 amdgpu_bo_unreserve(*bo_ptr);

error_free:
 if (free)
  amdgpu_bo_unref(bo_ptr);

 return r;
}
