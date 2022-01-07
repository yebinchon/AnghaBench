
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {scalar_t__ mem_type; scalar_t__ start; } ;
struct TYPE_6__ {int resv; } ;
struct TYPE_5__ {scalar_t__ type; int offset; TYPE_1__ mem; TYPE_3__ base; } ;
struct amdgpu_bo {int flags; TYPE_2__ tbo; int pin_count; } ;


 scalar_t__ AMDGPU_BO_INVALID_OFFSET ;
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ;
 scalar_t__ TTM_PL_SYSTEM ;
 scalar_t__ TTM_PL_VRAM ;
 int WARN_ON_ONCE (int) ;
 int amdgpu_gmc_sign_extend (int ) ;
 int dma_resv_is_locked (int ) ;
 scalar_t__ ttm_bo_type_kernel ;

u64 amdgpu_bo_gpu_offset(struct amdgpu_bo *bo)
{
 WARN_ON_ONCE(bo->tbo.mem.mem_type == TTM_PL_SYSTEM);
 WARN_ON_ONCE(!dma_resv_is_locked(bo->tbo.base.resv) &&
       !bo->pin_count && bo->tbo.type != ttm_bo_type_kernel);
 WARN_ON_ONCE(bo->tbo.mem.start == AMDGPU_BO_INVALID_OFFSET);
 WARN_ON_ONCE(bo->tbo.mem.mem_type == TTM_PL_VRAM &&
       !(bo->flags & AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS));

 return amdgpu_gmc_sign_extend(bo->tbo.offset);
}
