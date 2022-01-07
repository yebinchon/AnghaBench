
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pvrdma_uar_map {int index; } ;
struct pvrdma_id_table {int max; int top; int mask; int lock; int last; int table; } ;
struct TYPE_2__ {struct pvrdma_id_table tbl; } ;
struct pvrdma_dev {TYPE_1__ uar_table; } ;


 int clear_bit (int,int ) ;
 int min (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pvrdma_uar_free(struct pvrdma_dev *dev, struct pvrdma_uar_map *uar)
{
 struct pvrdma_id_table *tbl = &dev->uar_table.tbl;
 unsigned long flags;
 u32 obj;

 obj = uar->index & (tbl->max - 1);
 spin_lock_irqsave(&tbl->lock, flags);
 clear_bit(obj, tbl->table);
 tbl->last = min(tbl->last, obj);
 tbl->top = (tbl->top + tbl->max) & tbl->mask;
 spin_unlock_irqrestore(&tbl->lock, flags);
}
