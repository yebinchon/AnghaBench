
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct radeon_bo {int pitch; int tiling_flags; TYPE_2__ tbo; } ;


 int dma_resv_assert_held (int ) ;

void radeon_bo_get_tiling_flags(struct radeon_bo *bo,
    uint32_t *tiling_flags,
    uint32_t *pitch)
{
 dma_resv_assert_held(bo->tbo.base.resv);

 if (tiling_flags)
  *tiling_flags = bo->tiling_flags;
 if (pitch)
  *pitch = bo->pitch;
}
