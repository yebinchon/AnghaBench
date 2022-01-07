
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key_v2 {int dummy; } ;
struct dm_bio_prison_cell_v2 {int bios; int key; } ;


 int bio_list_init (int *) ;
 int memcpy (int *,struct dm_cell_key_v2*,int) ;
 int memset (struct dm_bio_prison_cell_v2*,int ,int) ;

__attribute__((used)) static void __setup_new_cell(struct dm_cell_key_v2 *key,
        struct dm_bio_prison_cell_v2 *cell)
{
 memset(cell, 0, sizeof(*cell));
 memcpy(&cell->key, key, sizeof(cell->key));
 bio_list_init(&cell->bios);
}
