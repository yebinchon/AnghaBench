
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcm_process_device {int is_debug; } ;
struct kernel_queue {int list; } ;
struct device_queue_manager {int total_queue_count; int queue_count; } ;


 int KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 int execute_queues_cpsch (struct device_queue_manager*,int ,int ) ;
 int list_del (int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void destroy_kernel_queue_cpsch(struct device_queue_manager *dqm,
     struct kernel_queue *kq,
     struct qcm_process_device *qpd)
{
 dqm_lock(dqm);
 list_del(&kq->list);
 dqm->queue_count--;
 qpd->is_debug = 0;
 execute_queues_cpsch(dqm, KFD_UNMAP_QUEUES_FILTER_ALL_QUEUES, 0);




 dqm->total_queue_count--;
 pr_debug("Total of %d queues are accountable so far\n",
   dqm->total_queue_count);
 dqm_unlock(dqm);
}
