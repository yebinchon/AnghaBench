
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_c {int dummy; } ;
struct pool {int process_prepared_discard; int process_discard_cell; int process_prepared_discard_pt2; TYPE_1__* ti; } ;
struct TYPE_2__ {struct pool_c* private; } ;


 scalar_t__ passdown_enabled (struct pool_c*) ;
 int process_discard_cell_no_passdown ;
 int process_discard_cell_passdown ;
 int process_prepared_discard_no_passdown ;
 int process_prepared_discard_passdown_pt1 ;
 int process_prepared_discard_passdown_pt2 ;

__attribute__((used)) static void set_discard_callbacks(struct pool *pool)
{
 struct pool_c *pt = pool->ti->private;

 if (passdown_enabled(pt)) {
  pool->process_discard_cell = process_discard_cell_passdown;
  pool->process_prepared_discard = process_prepared_discard_passdown_pt1;
  pool->process_prepared_discard_pt2 = process_prepared_discard_passdown_pt2;
 } else {
  pool->process_discard_cell = process_discard_cell_no_passdown;
  pool->process_prepared_discard = process_prepared_discard_no_passdown;
 }
}
