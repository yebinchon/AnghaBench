
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold {int value_set; int current_value; int context; int (* fn ) (int ) ;} ;
typedef int dm_block_t ;


 scalar_t__ below_threshold (struct threshold*,int ) ;
 int stub1 (int ) ;
 int threshold_already_triggered (struct threshold*) ;

__attribute__((used)) static void check_threshold(struct threshold *t, dm_block_t value)
{
 if (below_threshold(t, value) &&
     !threshold_already_triggered(t))
  t->fn(t->context);

 t->value_set = 1;
 t->current_value = value;
}
