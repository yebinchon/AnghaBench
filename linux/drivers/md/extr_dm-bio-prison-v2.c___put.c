
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_v2 {int cells; int wq; } ;
struct dm_bio_prison_cell_v2 {int node; int * quiesce_continuation; scalar_t__ exclusive_lock; int shared_count; } ;


 int BUG_ON (int) ;
 int queue_work (int ,int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static bool __put(struct dm_bio_prison_v2 *prison,
    struct dm_bio_prison_cell_v2 *cell)
{
 BUG_ON(!cell->shared_count);
 cell->shared_count--;


 if (!cell->shared_count) {
  if (cell->exclusive_lock){
   if (cell->quiesce_continuation) {
    queue_work(prison->wq, cell->quiesce_continuation);
    cell->quiesce_continuation = ((void*)0);
   }
  } else {
   rb_erase(&cell->node, &prison->cells);
   return 1;
  }
 }

 return 0;
}
