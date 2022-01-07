
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_v2 {int cell_pool; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;


 int mempool_free (struct dm_bio_prison_cell_v2*,int *) ;

void dm_bio_prison_free_cell_v2(struct dm_bio_prison_v2 *prison,
    struct dm_bio_prison_cell_v2 *cell)
{
 mempool_free(cell, &prison->cell_pool);
}
