
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int cell_pool; } ;
typedef int gfp_t ;


 struct dm_bio_prison_cell* mempool_alloc (int *,int ) ;

struct dm_bio_prison_cell *dm_bio_prison_alloc_cell(struct dm_bio_prison *prison, gfp_t gfp)
{
 return mempool_alloc(&prison->cell_pool, gfp);
}
