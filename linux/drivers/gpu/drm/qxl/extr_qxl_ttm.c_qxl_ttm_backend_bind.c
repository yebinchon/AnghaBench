
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int num_pages; } ;
struct ttm_mem_reg {int start; } ;
struct qxl_ttm_tt {unsigned long offset; } ;


 int PAGE_SHIFT ;
 int WARN (int,char*,int ,struct ttm_mem_reg*,struct ttm_tt*) ;

__attribute__((used)) static int qxl_ttm_backend_bind(struct ttm_tt *ttm,
    struct ttm_mem_reg *bo_mem)
{
 struct qxl_ttm_tt *gtt = (void *)ttm;

 gtt->offset = (unsigned long)(bo_mem->start << PAGE_SHIFT);
 if (!ttm->num_pages) {
  WARN(1, "nothing to bind %lu pages for mreg %p back %p!\n",
       ttm->num_pages, bo_mem, ttm);
 }

 return -1;
}
