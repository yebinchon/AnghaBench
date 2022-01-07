
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi_range {scalar_t__ base_id; scalar_t__ span; int entry; } ;


 int kfree (struct lpi_range*) ;
 int list_del (int *) ;
 int lpi_range_list ;

__attribute__((used)) static void merge_lpi_ranges(struct lpi_range *a, struct lpi_range *b)
{
 if (&a->entry == &lpi_range_list || &b->entry == &lpi_range_list)
  return;
 if (a->base_id + a->span != b->base_id)
  return;
 b->base_id = a->base_id;
 b->span += a->span;
 list_del(&a->entry);
 kfree(a);
}
