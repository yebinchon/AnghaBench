
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pvrdma_uar_map {int index; int pfn; } ;
struct pvrdma_id_table {int max; int top; int mask; int lock; int table; int last; } ;
struct TYPE_2__ {struct pvrdma_id_table tbl; } ;
struct pvrdma_dev {int pdev; TYPE_1__ uar_table; } ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int PVRDMA_PCI_RESOURCE_UAR ;
 int find_first_zero_bit (int ,int) ;
 int find_next_zero_bit (int ,int,int ) ;
 int pci_resource_start (int ,int ) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pvrdma_uar_alloc(struct pvrdma_dev *dev, struct pvrdma_uar_map *uar)
{
 struct pvrdma_id_table *tbl;
 unsigned long flags;
 u32 obj;

 tbl = &dev->uar_table.tbl;

 spin_lock_irqsave(&tbl->lock, flags);
 obj = find_next_zero_bit(tbl->table, tbl->max, tbl->last);
 if (obj >= tbl->max) {
  tbl->top = (tbl->top + tbl->max) & tbl->mask;
  obj = find_first_zero_bit(tbl->table, tbl->max);
 }

 if (obj >= tbl->max) {
  spin_unlock_irqrestore(&tbl->lock, flags);
  return -ENOMEM;
 }

 set_bit(obj, tbl->table);
 obj |= tbl->top;

 spin_unlock_irqrestore(&tbl->lock, flags);

 uar->index = obj;
 uar->pfn = (pci_resource_start(dev->pdev, PVRDMA_PCI_RESOURCE_UAR) >>
      PAGE_SHIFT) + uar->index;

 return 0;
}
