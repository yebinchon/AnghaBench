
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tiler_block {size_t fmt; int alloc_node; int area; } ;
struct TYPE_2__ {int alloc_head; } ;


 int ENOMEM ;
 struct tiler_block* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 size_t TILFMT_PAGE ;
 int * containers ;
 int kfree (struct tiler_block*) ;
 struct tiler_block* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_lock ;
 TYPE_1__* omap_dmm ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tcm_reserve_1d (int ,int,int *) ;

struct tiler_block *tiler_reserve_1d(size_t size)
{
 struct tiler_block *block = kzalloc(sizeof(*block), GFP_KERNEL);
 int num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 unsigned long flags;

 if (!block)
  return ERR_PTR(-ENOMEM);

 block->fmt = TILFMT_PAGE;

 if (tcm_reserve_1d(containers[TILFMT_PAGE], num_pages,
    &block->area)) {
  kfree(block);
  return ERR_PTR(-ENOMEM);
 }

 spin_lock_irqsave(&list_lock, flags);
 list_add(&block->alloc_node, &omap_dmm->alloc_head);
 spin_unlock_irqrestore(&list_lock, flags);

 return block;
}
