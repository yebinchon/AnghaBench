
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;
struct i40iw_sc_qp {struct list_head list; } ;


 struct i40iw_sc_qp* i40iw_qp_from_entry (struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;

__attribute__((used)) static struct i40iw_sc_qp *i40iw_get_qp(struct list_head *head, struct i40iw_sc_qp *qp)
{
 struct list_head *entry = ((void*)0);
 struct list_head *lastentry;

 if (list_empty(head))
  return ((void*)0);

 if (!qp) {
  entry = head->next;
 } else {
  lastentry = &qp->list;
  entry = (lastentry != head) ? lastentry->next : ((void*)0);
 }

 return i40iw_qp_from_entry(entry);
}
