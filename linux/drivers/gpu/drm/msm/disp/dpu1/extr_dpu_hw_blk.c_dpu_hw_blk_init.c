
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_ops {int dummy; } ;
struct dpu_hw_blk {int id; int list; struct dpu_hw_blk_ops ops; int refcount; int type; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int dpu_hw_blk_list ;
 int dpu_hw_blk_lock ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dpu_hw_blk_init(struct dpu_hw_blk *hw_blk, u32 type, int id,
  struct dpu_hw_blk_ops *ops)
{
 INIT_LIST_HEAD(&hw_blk->list);
 hw_blk->type = type;
 hw_blk->id = id;
 atomic_set(&hw_blk->refcount, 0);

 if (ops)
  hw_blk->ops = *ops;

 mutex_lock(&dpu_hw_blk_lock);
 list_add(&hw_blk->list, &dpu_hw_blk_list);
 mutex_unlock(&dpu_hw_blk_lock);
}
