
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_node {int list; } ;
struct i40iw_cm_core {int ht_lock; int non_accelerated_list; } ;


 int i40iw_pr_err (char*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i40iw_add_hte_node(struct i40iw_cm_core *cm_core,
          struct i40iw_cm_node *cm_node)
{
 unsigned long flags;

 if (!cm_node || !cm_core) {
  i40iw_pr_err("cm_node or cm_core == NULL\n");
  return;
 }

 spin_lock_irqsave(&cm_core->ht_lock, flags);
 list_add_tail(&cm_node->list, &cm_core->non_accelerated_list);
 spin_unlock_irqrestore(&cm_core->ht_lock, flags);
}
