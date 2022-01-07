
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exp_tid_set {scalar_t__ count; int list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void hfi1_exp_tid_set_init(struct exp_tid_set *set)
{
 INIT_LIST_HEAD(&set->list);
 set->count = 0;
}
