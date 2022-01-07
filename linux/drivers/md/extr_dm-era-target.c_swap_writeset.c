
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeset {int dummy; } ;
struct era_metadata {int current_writeset; } ;


 int rcu_assign_pointer (int ,struct writeset*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void swap_writeset(struct era_metadata *md, struct writeset *new_writeset)
{
 rcu_assign_pointer(md->current_writeset, new_writeset);
 synchronize_rcu();
}
