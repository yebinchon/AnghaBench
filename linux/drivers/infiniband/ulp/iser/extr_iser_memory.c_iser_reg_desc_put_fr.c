
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_fr_pool {int lock; int list; } ;
struct iser_fr_desc {int list; } ;
struct ib_conn {struct iser_fr_pool fr_pool; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
iser_reg_desc_put_fr(struct ib_conn *ib_conn,
       struct iser_fr_desc *desc)
{
 struct iser_fr_pool *fr_pool = &ib_conn->fr_pool;
 unsigned long flags;

 spin_lock_irqsave(&fr_pool->lock, flags);
 list_add(&desc->list, &fr_pool->list);
 spin_unlock_irqrestore(&fr_pool->lock, flags);
}
