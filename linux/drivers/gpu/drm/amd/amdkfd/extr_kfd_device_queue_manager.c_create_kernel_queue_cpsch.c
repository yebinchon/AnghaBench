
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcm_process_device {int is_debug; int priv_queue_list; } ;
struct kernel_queue {int list; } ;
struct device_queue_manager {scalar_t__ total_queue_count; int queue_count; } ;


 int EPERM ;
 int KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 int execute_queues_cpsch (struct device_queue_manager*,int ,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ max_num_of_queues_per_device ;
 int pr_debug (char*,scalar_t__) ;
 int pr_warn (char*,scalar_t__) ;

__attribute__((used)) static int create_kernel_queue_cpsch(struct device_queue_manager *dqm,
     struct kernel_queue *kq,
     struct qcm_process_device *qpd)
{
 dqm_lock(dqm);
 if (dqm->total_queue_count >= max_num_of_queues_per_device) {
  pr_warn("Can't create new kernel queue because %d queues were already created\n",
    dqm->total_queue_count);
  dqm_unlock(dqm);
  return -EPERM;
 }





 dqm->total_queue_count++;
 pr_debug("Total of %d queues are accountable so far\n",
   dqm->total_queue_count);

 list_add(&kq->list, &qpd->priv_queue_list);
 dqm->queue_count++;
 qpd->is_debug = 1;
 execute_queues_cpsch(dqm, KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, 0);
 dqm_unlock(dqm);

 return 0;
}
