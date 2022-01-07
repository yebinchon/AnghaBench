
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_bio_prison_cell {TYPE_2__* holder; } ;
struct TYPE_3__ {scalar_t__ bi_sector; } ;
struct TYPE_4__ {TYPE_1__ bi_iter; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int cmp_cells(const void *lhs, const void *rhs)
{
 struct dm_bio_prison_cell *lhs_cell = *((struct dm_bio_prison_cell **) lhs);
 struct dm_bio_prison_cell *rhs_cell = *((struct dm_bio_prison_cell **) rhs);

 BUG_ON(!lhs_cell->holder);
 BUG_ON(!rhs_cell->holder);

 if (lhs_cell->holder->bi_iter.bi_sector < rhs_cell->holder->bi_iter.bi_sector)
  return -1;

 if (lhs_cell->holder->bi_iter.bi_sector > rhs_cell->holder->bi_iter.bi_sector)
  return 1;

 return 0;
}
