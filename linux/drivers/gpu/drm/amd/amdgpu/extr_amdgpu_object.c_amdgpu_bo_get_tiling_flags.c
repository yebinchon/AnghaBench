
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct amdgpu_bo {int tiling_flags; TYPE_2__ tbo; } ;


 int dma_resv_assert_held (int ) ;

void amdgpu_bo_get_tiling_flags(struct amdgpu_bo *bo, u64 *tiling_flags)
{
 dma_resv_assert_held(bo->tbo.base.resv);

 if (tiling_flags)
  *tiling_flags = bo->tiling_flags;
}
