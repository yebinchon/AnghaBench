
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;


 int BLK_STS_DM_REQUEUE ;
 int cell_error_with_code (struct pool*,struct dm_bio_prison_cell*,int ) ;

__attribute__((used)) static void cell_requeue(struct pool *pool, struct dm_bio_prison_cell *cell)
{
 cell_error_with_code(pool, cell, BLK_STS_DM_REQUEUE);
}
