
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int prison; } ;
struct dm_bio_prison_cell {int dummy; } ;


 int dm_bio_prison_free_cell (int ,struct dm_bio_prison_cell*) ;
 int dm_cell_visit_release (int ,void (*) (void*,struct dm_bio_prison_cell*),void*,struct dm_bio_prison_cell*) ;

__attribute__((used)) static void cell_visit_release(struct pool *pool,
          void (*fn)(void *, struct dm_bio_prison_cell *),
          void *context,
          struct dm_bio_prison_cell *cell)
{
 dm_cell_visit_release(pool->prison, fn, context, cell);
 dm_bio_prison_free_cell(pool->prison, cell);
}
