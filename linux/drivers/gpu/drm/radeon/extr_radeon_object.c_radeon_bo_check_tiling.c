
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mem_type; } ;
struct TYPE_4__ {int resv; } ;
struct TYPE_6__ {TYPE_2__ mem; TYPE_1__ base; } ;
struct radeon_bo {int tiling_flags; scalar_t__ surface_reg; TYPE_3__ tbo; } ;


 int RADEON_TILING_SURFACE ;
 scalar_t__ TTM_PL_VRAM ;
 int dma_resv_assert_held (int ) ;
 int radeon_bo_clear_surface_reg (struct radeon_bo*) ;
 int radeon_bo_get_surface_reg (struct radeon_bo*) ;

int radeon_bo_check_tiling(struct radeon_bo *bo, bool has_moved,
    bool force_drop)
{
 if (!force_drop)
  dma_resv_assert_held(bo->tbo.base.resv);

 if (!(bo->tiling_flags & RADEON_TILING_SURFACE))
  return 0;

 if (force_drop) {
  radeon_bo_clear_surface_reg(bo);
  return 0;
 }

 if (bo->tbo.mem.mem_type != TTM_PL_VRAM) {
  if (!has_moved)
   return 0;

  if (bo->surface_reg >= 0)
   radeon_bo_clear_surface_reg(bo);
  return 0;
 }

 if ((bo->surface_reg >= 0) && !has_moved)
  return 0;

 return radeon_bo_get_surface_reg(bo);
}
