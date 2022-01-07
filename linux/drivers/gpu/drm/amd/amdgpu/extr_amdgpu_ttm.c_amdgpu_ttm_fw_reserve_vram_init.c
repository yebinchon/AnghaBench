
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_9__ {scalar_t__ start_offset; scalar_t__ size; struct amdgpu_bo* reserved_bo; int * va; } ;
struct TYPE_7__ {scalar_t__ visible_vram_size; } ;
struct amdgpu_device {TYPE_3__ fw_vram_usage; TYPE_1__ gmc; } ;
struct amdgpu_bo_param {scalar_t__ size; int flags; int * resv; int type; int domain; int byte_align; } ;
struct TYPE_10__ {int mem; } ;
struct TYPE_11__ {int num_placement; } ;
struct amdgpu_bo {TYPE_4__ tbo; TYPE_5__ placement; TYPE_2__* placements; } ;
typedef int bp ;
struct TYPE_8__ {scalar_t__ lpfn; scalar_t__ fpfn; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ;
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int amdgpu_bo_create (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ;
 int amdgpu_bo_kmap (struct amdgpu_bo*,int **) ;
 int amdgpu_bo_pin_restricted (struct amdgpu_bo*,int ,scalar_t__,scalar_t__) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int memset (struct amdgpu_bo_param*,int ,int) ;
 int ttm_bo_mem_put (TYPE_4__*,int *) ;
 int ttm_bo_mem_space (TYPE_4__*,TYPE_5__*,int *,struct ttm_operation_ctx*) ;
 int ttm_bo_type_kernel ;

__attribute__((used)) static int amdgpu_ttm_fw_reserve_vram_init(struct amdgpu_device *adev)
{
 struct ttm_operation_ctx ctx = { 0, 0 };
 struct amdgpu_bo_param bp;
 int r = 0;
 int i;
 u64 vram_size = adev->gmc.visible_vram_size;
 u64 offset = adev->fw_vram_usage.start_offset;
 u64 size = adev->fw_vram_usage.size;
 struct amdgpu_bo *bo;

 memset(&bp, 0, sizeof(bp));
 bp.size = adev->fw_vram_usage.size;
 bp.byte_align = PAGE_SIZE;
 bp.domain = AMDGPU_GEM_DOMAIN_VRAM;
 bp.flags = AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED |
  AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS;
 bp.type = ttm_bo_type_kernel;
 bp.resv = ((void*)0);
 adev->fw_vram_usage.va = ((void*)0);
 adev->fw_vram_usage.reserved_bo = ((void*)0);

 if (adev->fw_vram_usage.size > 0 &&
  adev->fw_vram_usage.size <= vram_size) {

  r = amdgpu_bo_create(adev, &bp,
         &adev->fw_vram_usage.reserved_bo);
  if (r)
   goto error_create;

  r = amdgpu_bo_reserve(adev->fw_vram_usage.reserved_bo, 0);
  if (r)
   goto error_reserve;




  bo = adev->fw_vram_usage.reserved_bo;
  offset = ALIGN(offset, PAGE_SIZE);
  for (i = 0; i < bo->placement.num_placement; ++i) {
   bo->placements[i].fpfn = offset >> PAGE_SHIFT;
   bo->placements[i].lpfn = (offset + size) >> PAGE_SHIFT;
  }

  ttm_bo_mem_put(&bo->tbo, &bo->tbo.mem);
  r = ttm_bo_mem_space(&bo->tbo, &bo->placement,
         &bo->tbo.mem, &ctx);
  if (r)
   goto error_pin;

  r = amdgpu_bo_pin_restricted(adev->fw_vram_usage.reserved_bo,
   AMDGPU_GEM_DOMAIN_VRAM,
   adev->fw_vram_usage.start_offset,
   (adev->fw_vram_usage.start_offset +
   adev->fw_vram_usage.size));
  if (r)
   goto error_pin;
  r = amdgpu_bo_kmap(adev->fw_vram_usage.reserved_bo,
   &adev->fw_vram_usage.va);
  if (r)
   goto error_kmap;

  amdgpu_bo_unreserve(adev->fw_vram_usage.reserved_bo);
 }
 return r;

error_kmap:
 amdgpu_bo_unpin(adev->fw_vram_usage.reserved_bo);
error_pin:
 amdgpu_bo_unreserve(adev->fw_vram_usage.reserved_bo);
error_reserve:
 amdgpu_bo_unref(&adev->fw_vram_usage.reserved_bo);
error_create:
 adev->fw_vram_usage.va = ((void*)0);
 adev->fw_vram_usage.reserved_bo = ((void*)0);
 return r;
}
