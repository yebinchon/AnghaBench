
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int dummy; } ;
struct ttm_dma_tt {int pages_list; struct ttm_tt ttm; } ;
struct ttm_buffer_object {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int pr_err (char*) ;
 scalar_t__ ttm_dma_tt_alloc_page_directory (struct ttm_dma_tt*) ;
 int ttm_tt_destroy (struct ttm_tt*) ;
 int ttm_tt_init_fields (struct ttm_tt*,struct ttm_buffer_object*,int ) ;

int ttm_dma_tt_init(struct ttm_dma_tt *ttm_dma, struct ttm_buffer_object *bo,
      uint32_t page_flags)
{
 struct ttm_tt *ttm = &ttm_dma->ttm;

 ttm_tt_init_fields(ttm, bo, page_flags);

 INIT_LIST_HEAD(&ttm_dma->pages_list);
 if (ttm_dma_tt_alloc_page_directory(ttm_dma)) {
  ttm_tt_destroy(ttm);
  pr_err("Failed allocating page table\n");
  return -ENOMEM;
 }
 return 0;
}
