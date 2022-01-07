
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_group {int dummy; } ;
struct exp_tid_set {int dummy; } ;


 int tid_group_add_tail (struct tid_group*,struct exp_tid_set*) ;
 int tid_group_remove (struct tid_group*,struct exp_tid_set*) ;

__attribute__((used)) static inline void tid_group_move(struct tid_group *group,
      struct exp_tid_set *s1,
      struct exp_tid_set *s2)
{
 tid_group_remove(group, s1);
 tid_group_add_tail(group, s2);
}
