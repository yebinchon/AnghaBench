
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;


 int ENOMEM ;
 int pr_err (char*) ;
 scalar_t__ ttm_tt_alloc_page_directory (struct ttm_tt*) ;
 int ttm_tt_destroy (struct ttm_tt*) ;
 int ttm_tt_init_fields (struct ttm_tt*,struct ttm_buffer_object*,int ) ;

int ttm_tt_init(struct ttm_tt *ttm, struct ttm_buffer_object *bo,
  uint32_t page_flags)
{
 ttm_tt_init_fields(ttm, bo, page_flags);

 if (ttm_tt_alloc_page_directory(ttm)) {
  ttm_tt_destroy(ttm);
  pr_err("Failed allocating page table\n");
  return -ENOMEM;
 }
 return 0;
}
