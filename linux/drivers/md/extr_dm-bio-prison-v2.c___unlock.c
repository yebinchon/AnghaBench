
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_v2 {int cells; } ;
struct dm_bio_prison_cell_v2 {int node; scalar_t__ exclusive_lock; scalar_t__ shared_count; int bios; } ;
struct bio_list {int dummy; } ;


 int BUG_ON (int) ;
 int bio_list_init (int *) ;
 int bio_list_merge (struct bio_list*,int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static bool __unlock(struct dm_bio_prison_v2 *prison,
       struct dm_bio_prison_cell_v2 *cell,
       struct bio_list *bios)
{
 BUG_ON(!cell->exclusive_lock);

 bio_list_merge(bios, &cell->bios);
 bio_list_init(&cell->bios);

 if (cell->shared_count) {
  cell->exclusive_lock = 0;
  return 0;
 }

 rb_erase(&cell->node, &prison->cells);
 return 1;
}
