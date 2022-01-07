
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_queue_node {struct kernel_queue* kq; } ;
struct process_queue_manager {int dummy; } ;
struct kernel_queue {int dummy; } ;


 struct process_queue_node* get_queue_by_qid (struct process_queue_manager*,unsigned int) ;

struct kernel_queue *pqm_get_kernel_queue(
     struct process_queue_manager *pqm,
     unsigned int qid)
{
 struct process_queue_node *pqn;

 pqn = get_queue_by_qid(pqm, qid);
 if (pqn && pqn->kq)
  return pqn->kq;

 return ((void*)0);
}
