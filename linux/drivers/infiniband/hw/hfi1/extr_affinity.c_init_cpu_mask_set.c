
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_mask_set {scalar_t__ gen; int used; int mask; } ;


 int cpumask_clear (int *) ;

__attribute__((used)) static inline void init_cpu_mask_set(struct cpu_mask_set *set)
{
 cpumask_clear(&set->mask);
 cpumask_clear(&set->used);
 set->gen = 0;
}
