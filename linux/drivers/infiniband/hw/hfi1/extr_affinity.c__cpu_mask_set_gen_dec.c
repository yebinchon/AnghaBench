
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_mask_set {int mask; int used; scalar_t__ gen; } ;


 int cpumask_copy (int *,int *) ;
 scalar_t__ cpumask_empty (int *) ;

__attribute__((used)) static void _cpu_mask_set_gen_dec(struct cpu_mask_set *set)
{
 if (cpumask_empty(&set->used) && set->gen) {
  set->gen--;
  cpumask_copy(&set->used, &set->mask);
 }
}
