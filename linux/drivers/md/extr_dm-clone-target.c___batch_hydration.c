
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_region_hydration {scalar_t__ region_nr; int list; struct clone* clone; } ;
struct clone {int hydration_batch_size; } ;
struct batch_info {unsigned int nr_batched_regions; struct dm_clone_region_hydration* head; } ;


 int BUG_ON (int) ;
 unsigned int READ_ONCE (int ) ;
 int hydration_copy (struct dm_clone_region_hydration*,int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void __batch_hydration(struct batch_info *batch,
         struct dm_clone_region_hydration *hd)
{
 struct clone *clone = hd->clone;
 unsigned int max_batch_size = READ_ONCE(clone->hydration_batch_size);

 if (batch->head) {

  if (batch->nr_batched_regions < max_batch_size &&
      (batch->head->region_nr + batch->nr_batched_regions) == hd->region_nr) {
   list_add_tail(&hd->list, &batch->head->list);
   batch->nr_batched_regions++;
   hd = ((void*)0);
  }


  if (batch->nr_batched_regions >= max_batch_size || hd) {
   hydration_copy(batch->head, batch->nr_batched_regions);
   batch->head = ((void*)0);
   batch->nr_batched_regions = 0;
  }
 }

 if (!hd)
  return;


 if (max_batch_size <= 1) {
  hydration_copy(hd, 1);
  return;
 }


 BUG_ON(!list_empty(&hd->list));
 batch->head = hd;
 batch->nr_batched_regions = 1;
}
