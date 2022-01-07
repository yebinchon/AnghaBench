
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psb_mmu_pd {int dummy; } ;


 int drm_ttm_cache_flush () ;

__attribute__((used)) static void psb_mmu_flush_ptes(struct psb_mmu_pd *pd, unsigned long address,
          uint32_t num_pages, uint32_t desired_tile_stride,
          uint32_t hw_tile_stride)
{
 drm_ttm_cache_flush();
}
