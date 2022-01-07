
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_v2 {int cell_pool; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
typedef int gfp_t ;


 struct dm_bio_prison_cell_v2* mempool_alloc (int *,int ) ;

struct dm_bio_prison_cell_v2 *dm_bio_prison_alloc_cell_v2(struct dm_bio_prison_v2 *prison, gfp_t gfp)
{
 return mempool_alloc(&prison->cell_pool, gfp);
}
