
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int pool; } ;
struct dm_bio_prison_cell {int dummy; } ;


 int cell_error (int ,struct dm_bio_prison_cell*) ;

__attribute__((used)) static void process_cell_fail(struct thin_c *tc, struct dm_bio_prison_cell *cell)
{
 cell_error(tc->pool, cell);
}
