
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_properties {unsigned int queue_id; scalar_t__ vmid; int * doorbell_ptr; } ;
struct queue {int process; struct kfd_dev* device; } ;
struct process_queue_manager {int process; } ;
struct kfd_dev {int dummy; } ;
struct file {int dummy; } ;


 int init_queue (struct queue**,struct queue_properties*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int create_cp_queue(struct process_queue_manager *pqm,
    struct kfd_dev *dev, struct queue **q,
    struct queue_properties *q_properties,
    struct file *f, unsigned int qid)
{
 int retval;


 q_properties->doorbell_ptr = ((void*)0);


 q_properties->vmid = 0;
 q_properties->queue_id = qid;

 retval = init_queue(q, q_properties);
 if (retval != 0)
  return retval;

 (*q)->device = dev;
 (*q)->process = pqm->process;

 pr_debug("PQM After init queue");

 return retval;
}
