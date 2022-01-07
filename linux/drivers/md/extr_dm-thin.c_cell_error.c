
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;


 int cell_error_with_code (struct pool*,struct dm_bio_prison_cell*,int ) ;
 int get_pool_io_error_code (struct pool*) ;

__attribute__((used)) static void cell_error(struct pool *pool, struct dm_bio_prison_cell *cell)
{
 cell_error_with_code(pool, cell, get_pool_io_error_code(pool));
}
