
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct dma_buf {int priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int bdev; } ;
struct amdgpu_bo {int allowed_domains; int placement; TYPE_1__ tbo; int pin_count; int flags; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int amdgpu_bo_placement_from_domain (struct amdgpu_bo*,int) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int amdgpu_display_supported_domains (struct amdgpu_device*,int ) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (int ) ;
 int ttm_bo_validate (TYPE_1__*,int *,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int amdgpu_dma_buf_begin_cpu_access(struct dma_buf *dma_buf,
        enum dma_data_direction direction)
{
 struct amdgpu_bo *bo = gem_to_amdgpu_bo(dma_buf->priv);
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 struct ttm_operation_ctx ctx = { 1, 0 };
 u32 domain = amdgpu_display_supported_domains(adev, bo->flags);
 int ret;
 bool reads = (direction == DMA_BIDIRECTIONAL ||
        direction == DMA_FROM_DEVICE);

 if (!reads || !(domain & AMDGPU_GEM_DOMAIN_GTT))
  return 0;


 ret = amdgpu_bo_reserve(bo, 0);
 if (unlikely(ret != 0))
  return ret;

 if (!bo->pin_count && (bo->allowed_domains & AMDGPU_GEM_DOMAIN_GTT)) {
  amdgpu_bo_placement_from_domain(bo, AMDGPU_GEM_DOMAIN_GTT);
  ret = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
 }

 amdgpu_bo_unreserve(bo);
 return ret;
}
