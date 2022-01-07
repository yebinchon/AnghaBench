
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_timer_entry {scalar_t__ sqbuf; } ;
struct i40iw_device {int vsi; } ;
struct i40iw_cm_node {int ref_count; struct i40iw_timer_entry* send_entry; struct i40iw_device* iwdev; } ;


 int atomic_dec (int *) ;
 int i40iw_free_sqbuf (int *,void*) ;
 int kfree (struct i40iw_timer_entry*) ;

__attribute__((used)) static void i40iw_free_retrans_entry(struct i40iw_cm_node *cm_node)
{
 struct i40iw_device *iwdev = cm_node->iwdev;
 struct i40iw_timer_entry *send_entry;

 send_entry = cm_node->send_entry;
 if (send_entry) {
  cm_node->send_entry = ((void*)0);
  i40iw_free_sqbuf(&iwdev->vsi, (void *)send_entry->sqbuf);
  kfree(send_entry);
  atomic_dec(&cm_node->ref_count);
 }
}
