
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct radeon_ttm_tt {int ttm; } ;


 int kfree (struct radeon_ttm_tt*) ;
 int ttm_dma_tt_fini (int *) ;

__attribute__((used)) static void radeon_ttm_backend_destroy(struct ttm_tt *ttm)
{
 struct radeon_ttm_tt *gtt = (void *)ttm;

 ttm_dma_tt_fini(&gtt->ttm);
 kfree(gtt);
}
