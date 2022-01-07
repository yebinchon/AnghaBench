
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int bios; int holder; int node; } ;
struct dm_bio_prison {int cells; } ;


 scalar_t__ bio_list_empty (int *) ;
 int bio_list_pop (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static int __promote_or_release(struct dm_bio_prison *prison,
    struct dm_bio_prison_cell *cell)
{
 if (bio_list_empty(&cell->bios)) {
  rb_erase(&cell->node, &prison->cells);
  return 1;
 }

 cell->holder = bio_list_pop(&cell->bios);
 return 0;
}
