
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ is_active; } ;
struct queue {int mqd_mem_obj; int mqd; TYPE_1__ properties; int list; } ;
struct qcm_process_device {int reset_wavefronts; int queue_count; scalar_t__ is_debug; } ;
struct mqd_manager {int (* free_mqd ) (struct mqd_manager*,int ,int ) ;} ;
struct device_queue_manager {int total_queue_count; int queue_count; int xgmi_sdma_queue_count; int sdma_queue_count; struct mqd_manager** mqd_mgrs; } ;


 int EBUSY ;
 int ETIME ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA_XGMI ;
 int KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES ;
 int deallocate_doorbell (struct qcm_process_device*,struct queue*) ;
 int deallocate_sdma_queue (struct device_queue_manager*,struct queue*) ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 int execute_queues_cpsch (struct device_queue_manager*,int ,int ) ;
 size_t get_mqd_type_from_queue_type (scalar_t__) ;
 int list_del (int *) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct mqd_manager*,int ,int ) ;

__attribute__((used)) static int destroy_queue_cpsch(struct device_queue_manager *dqm,
    struct qcm_process_device *qpd,
    struct queue *q)
{
 int retval;
 struct mqd_manager *mqd_mgr;

 retval = 0;


 dqm_lock(dqm);

 if (qpd->is_debug) {




  retval = -EBUSY;
  goto failed_try_destroy_debugged_queue;

 }

 mqd_mgr = dqm->mqd_mgrs[get_mqd_type_from_queue_type(
   q->properties.type)];

 deallocate_doorbell(qpd, q);

 if (q->properties.type == KFD_QUEUE_TYPE_SDMA) {
  dqm->sdma_queue_count--;
  deallocate_sdma_queue(dqm, q);
 } else if (q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI) {
  dqm->xgmi_sdma_queue_count--;
  deallocate_sdma_queue(dqm, q);
 }

 list_del(&q->list);
 qpd->queue_count--;
 if (q->properties.is_active) {
  dqm->queue_count--;
  retval = execute_queues_cpsch(dqm,
    KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, 0);
  if (retval == -ETIME)
   qpd->reset_wavefronts = 1;
 }





 dqm->total_queue_count--;
 pr_debug("Total of %d queues are accountable so far\n",
   dqm->total_queue_count);

 dqm_unlock(dqm);


 mqd_mgr->free_mqd(mqd_mgr, q->mqd, q->mqd_mem_obj);

 return retval;

failed_try_destroy_debugged_queue:

 dqm_unlock(dqm);
 return retval;
}
