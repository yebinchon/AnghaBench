
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tcm; } ;
struct tiler_block {int alloc_node; TYPE_1__ area; } ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int ,char*) ;
 int kfree (struct tiler_block*) ;
 int list_del (int *) ;
 int list_lock ;
 TYPE_2__* omap_dmm ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tcm_free (TYPE_1__*) ;

int tiler_release(struct tiler_block *block)
{
 int ret = tcm_free(&block->area);
 unsigned long flags;

 if (block->area.tcm)
  dev_err(omap_dmm->dev, "failed to release block\n");

 spin_lock_irqsave(&list_lock, flags);
 list_del(&block->alloc_node);
 spin_unlock_irqrestore(&list_lock, flags);

 kfree(block);
 return ret;
}
