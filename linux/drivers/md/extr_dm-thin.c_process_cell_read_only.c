
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct dm_bio_prison_cell {int holder; } ;


 int __process_bio_read_only (struct thin_c*,int ,struct dm_bio_prison_cell*) ;

__attribute__((used)) static void process_cell_read_only(struct thin_c *tc, struct dm_bio_prison_cell *cell)
{
 __process_bio_read_only(tc, cell->holder, cell);
}
