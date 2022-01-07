
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int bios; struct bio* holder; int key; } ;
struct bio {int dummy; } ;


 int bio_list_init (int *) ;
 int memcpy (int *,struct dm_cell_key*,int) ;

__attribute__((used)) static void __setup_new_cell(struct dm_cell_key *key,
        struct bio *holder,
        struct dm_bio_prison_cell *cell)
{
       memcpy(&cell->key, key, sizeof(cell->key));
       cell->holder = holder;
       bio_list_init(&cell->bios);
}
