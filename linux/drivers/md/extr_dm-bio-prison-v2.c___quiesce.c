
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct dm_bio_prison_v2 {int wq; } ;
struct dm_bio_prison_cell_v2 {struct work_struct* quiesce_continuation; int shared_count; } ;


 int queue_work (int ,struct work_struct*) ;

__attribute__((used)) static void __quiesce(struct dm_bio_prison_v2 *prison,
        struct dm_bio_prison_cell_v2 *cell,
        struct work_struct *continuation)
{
 if (!cell->shared_count)
  queue_work(prison->wq, continuation);
 else
  cell->quiesce_continuation = continuation;
}
