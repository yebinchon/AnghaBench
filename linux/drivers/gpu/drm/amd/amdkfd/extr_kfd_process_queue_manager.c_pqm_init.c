
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_queue_manager {struct kfd_process* process; int queue_slot_bitmap; int queues; } ;
struct kfd_process {int dummy; } ;


 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KFD_MAX_NUM_OF_QUEUES_PER_PROCESS ;
 int kzalloc (int ,int ) ;

int pqm_init(struct process_queue_manager *pqm, struct kfd_process *p)
{
 INIT_LIST_HEAD(&pqm->queues);
 pqm->queue_slot_bitmap =
   kzalloc(DIV_ROUND_UP(KFD_MAX_NUM_OF_QUEUES_PER_PROCESS,
     BITS_PER_BYTE), GFP_KERNEL);
 if (!pqm->queue_slot_bitmap)
  return -ENOMEM;
 pqm->process = p;

 return 0;
}
