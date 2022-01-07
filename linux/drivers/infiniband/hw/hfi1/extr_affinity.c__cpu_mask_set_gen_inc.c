
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_mask_set {int used; int gen; int mask; } ;


 int cpumask_clear (int *) ;
 scalar_t__ cpumask_equal (int *,int *) ;

__attribute__((used)) static void _cpu_mask_set_gen_inc(struct cpu_mask_set *set)
{
 if (cpumask_equal(&set->mask, &set->used)) {




  set->gen++;
  cpumask_clear(&set->used);
 }
}
