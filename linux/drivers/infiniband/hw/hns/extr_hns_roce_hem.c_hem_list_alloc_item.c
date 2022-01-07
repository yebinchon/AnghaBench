
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roce_hem_item {int count; int start; int end; int sibling; int list; int addr; int dma_addr; } ;
struct hns_roce_dev {int dev; } ;


 int BA_BYTE_LEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int kfree (struct roce_hem_item*) ;
 struct roce_hem_item* kzalloc (int,int ) ;

__attribute__((used)) static struct roce_hem_item *hem_list_alloc_item(struct hns_roce_dev *hr_dev,
         int start, int end,
         int count, bool exist_bt,
         int bt_level)
{
 struct roce_hem_item *hem;

 hem = kzalloc(sizeof(*hem), GFP_KERNEL);
 if (!hem)
  return ((void*)0);

 if (exist_bt) {
  hem->addr = dma_alloc_coherent(hr_dev->dev,
         count * BA_BYTE_LEN,
         &hem->dma_addr, GFP_KERNEL);
  if (!hem->addr) {
   kfree(hem);
   return ((void*)0);
  }
 }

 hem->count = count;
 hem->start = start;
 hem->end = end;
 INIT_LIST_HEAD(&hem->list);
 INIT_LIST_HEAD(&hem->sibling);

 return hem;
}
