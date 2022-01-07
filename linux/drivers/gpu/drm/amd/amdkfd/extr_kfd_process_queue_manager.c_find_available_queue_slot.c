
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process_queue_manager {int queue_slot_bitmap; TYPE_1__* process; } ;
struct TYPE_2__ {int pasid; } ;


 int ENOMEM ;
 unsigned long KFD_MAX_NUM_OF_QUEUES_PER_PROCESS ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int pr_debug (char*,unsigned long) ;
 int pr_info (char*,int ) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static int find_available_queue_slot(struct process_queue_manager *pqm,
     unsigned int *qid)
{
 unsigned long found;

 found = find_first_zero_bit(pqm->queue_slot_bitmap,
   KFD_MAX_NUM_OF_QUEUES_PER_PROCESS);

 pr_debug("The new slot id %lu\n", found);

 if (found >= KFD_MAX_NUM_OF_QUEUES_PER_PROCESS) {
  pr_info("Cannot open more queues for process with pasid %d\n",
    pqm->process->pasid);
  return -ENOMEM;
 }

 set_bit(found, pqm->queue_slot_bitmap);
 *qid = found;

 return 0;
}
