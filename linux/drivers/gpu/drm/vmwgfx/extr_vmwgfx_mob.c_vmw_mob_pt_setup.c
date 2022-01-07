
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sg_table {int dummy; } ;
struct vmw_piter {int dummy; } ;
struct vmw_mob {int pt_level; int pt_root_page; struct ttm_buffer_object* pt_bo; } ;
struct ttm_buffer_object {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ likely (int) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 struct vmw_sg_table* vmw_bo_sg_table (struct ttm_buffer_object*) ;
 unsigned long vmw_mob_build_pt (struct vmw_piter*,unsigned long,struct vmw_piter*) ;
 int vmw_piter_dma_addr (struct vmw_piter*) ;
 int vmw_piter_next (struct vmw_piter*) ;
 int vmw_piter_start (struct vmw_piter*,struct vmw_sg_table const*,int ) ;

__attribute__((used)) static void vmw_mob_pt_setup(struct vmw_mob *mob,
        struct vmw_piter data_iter,
        unsigned long num_data_pages)
{
 unsigned long num_pt_pages = 0;
 struct ttm_buffer_object *bo = mob->pt_bo;
 struct vmw_piter save_pt_iter;
 struct vmw_piter pt_iter;
 const struct vmw_sg_table *vsgt;
 int ret;

 ret = ttm_bo_reserve(bo, 0, 1, ((void*)0));
 BUG_ON(ret != 0);

 vsgt = vmw_bo_sg_table(bo);
 vmw_piter_start(&pt_iter, vsgt, 0);
 BUG_ON(!vmw_piter_next(&pt_iter));
 mob->pt_level = 0;
 while (likely(num_data_pages > 1)) {
  ++mob->pt_level;
  BUG_ON(mob->pt_level > 2);
  save_pt_iter = pt_iter;
  num_pt_pages = vmw_mob_build_pt(&data_iter, num_data_pages,
      &pt_iter);
  data_iter = save_pt_iter;
  num_data_pages = num_pt_pages;
 }

 mob->pt_root_page = vmw_piter_dma_addr(&save_pt_iter);
 ttm_bo_unreserve(bo);
}
