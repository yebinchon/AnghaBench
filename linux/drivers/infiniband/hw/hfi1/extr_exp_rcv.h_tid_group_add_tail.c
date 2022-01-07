
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_group {int list; } ;
struct exp_tid_set {int count; int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void tid_group_add_tail(struct tid_group *grp,
          struct exp_tid_set *set)
{
 list_add_tail(&grp->list, &set->list);
 set->count++;
}
