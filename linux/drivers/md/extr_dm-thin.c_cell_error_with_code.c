
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int prison; } ;
struct dm_bio_prison_cell {int dummy; } ;
typedef int blk_status_t ;


 int dm_bio_prison_free_cell (int ,struct dm_bio_prison_cell*) ;
 int dm_cell_error (int ,struct dm_bio_prison_cell*,int ) ;

__attribute__((used)) static void cell_error_with_code(struct pool *pool,
  struct dm_bio_prison_cell *cell, blk_status_t error_code)
{
 dm_cell_error(pool->prison, cell, error_code);
 dm_bio_prison_free_cell(pool->prison, cell);
}
