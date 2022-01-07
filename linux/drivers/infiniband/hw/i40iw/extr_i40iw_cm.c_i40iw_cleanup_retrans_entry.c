
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_cm_node {int retrans_list_lock; } ;


 int i40iw_free_retrans_entry (struct i40iw_cm_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i40iw_cleanup_retrans_entry(struct i40iw_cm_node *cm_node)
{
 unsigned long flags;

 spin_lock_irqsave(&cm_node->retrans_list_lock, flags);
 i40iw_free_retrans_entry(cm_node);
 spin_unlock_irqrestore(&cm_node->retrans_list_lock, flags);
}
