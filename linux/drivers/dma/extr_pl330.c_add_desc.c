
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dma_pl330_desc {int node; } ;
typedef int spinlock_t ;
typedef int gfp_t ;


 int _init_desc (struct dma_pl330_desc*) ;
 struct dma_pl330_desc* kcalloc (int,int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int add_desc(struct list_head *pool, spinlock_t *lock,
      gfp_t flg, int count)
{
 struct dma_pl330_desc *desc;
 unsigned long flags;
 int i;

 desc = kcalloc(count, sizeof(*desc), flg);
 if (!desc)
  return 0;

 spin_lock_irqsave(lock, flags);

 for (i = 0; i < count; i++) {
  _init_desc(&desc[i]);
  list_add_tail(&desc[i].node, pool);
 }

 spin_unlock_irqrestore(lock, flags);

 return count;
}
