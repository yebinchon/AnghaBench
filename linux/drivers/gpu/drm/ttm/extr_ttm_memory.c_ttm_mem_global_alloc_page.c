
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_zone {int dummy; } ;
struct ttm_mem_global {struct ttm_mem_zone* zone_kernel; scalar_t__ zone_dma32; struct ttm_mem_zone* zone_highmem; } ;
struct page {int dummy; } ;


 scalar_t__ PageHighMem (struct page*) ;
 int page_to_pfn (struct page*) ;
 int ttm_mem_global_alloc_zone (struct ttm_mem_global*,struct ttm_mem_zone*,int ,struct ttm_operation_ctx*) ;

int ttm_mem_global_alloc_page(struct ttm_mem_global *glob,
         struct page *page, uint64_t size,
         struct ttm_operation_ctx *ctx)
{
 struct ttm_mem_zone *zone = ((void*)0);
 if (glob->zone_dma32 && page_to_pfn(page) > 0x00100000UL)
  zone = glob->zone_kernel;

 return ttm_mem_global_alloc_zone(glob, zone, size, ctx);
}
