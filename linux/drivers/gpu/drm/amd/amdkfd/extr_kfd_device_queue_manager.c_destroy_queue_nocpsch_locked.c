
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ is_active; } ;
struct queue {TYPE_2__ properties; int list; int mqd_mem_obj; int mqd; int queue; int pipe; } ;
struct qcm_process_device {int reset_wavefronts; int queue_count; TYPE_1__* pqm; int queues_list; } ;
struct mqd_manager {int (* destroy_mqd ) (struct mqd_manager*,int ,int ,int ,int ,int ) ;int (* free_mqd ) (struct mqd_manager*,int ,int ) ;} ;
struct device_queue_manager {int queue_count; int dev; int total_queue_count; int xgmi_sdma_queue_count; int sdma_queue_count; struct mqd_manager** mqd_mgrs; } ;
struct TYPE_3__ {int process; } ;


 int EINVAL ;
 int ETIME ;
 int KFD_PREEMPT_TYPE_WAVEFRONT_RESET ;
 scalar_t__ KFD_QUEUE_TYPE_COMPUTE ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA_XGMI ;
 int KFD_UNMAP_LATENCY_MS ;
 int dbgdev_wave_reset_wavefronts (int ,int ) ;
 int deallocate_doorbell (struct qcm_process_device*,struct queue*) ;
 int deallocate_hqd (struct device_queue_manager*,struct queue*) ;
 int deallocate_sdma_queue (struct device_queue_manager*,struct queue*) ;
 int deallocate_vmid (struct device_queue_manager*,struct qcm_process_device*,struct queue*) ;
 size_t get_mqd_type_from_queue_type (scalar_t__) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int pr_debug (char*,scalar_t__) ;
 int pr_warn (char*,int ) ;
 int stub1 (struct mqd_manager*,int ,int ,int ,int ,int ) ;
 int stub2 (struct mqd_manager*,int ,int ) ;

__attribute__((used)) static int destroy_queue_nocpsch_locked(struct device_queue_manager *dqm,
    struct qcm_process_device *qpd,
    struct queue *q)
{
 int retval;
 struct mqd_manager *mqd_mgr;

 mqd_mgr = dqm->mqd_mgrs[get_mqd_type_from_queue_type(
   q->properties.type)];

 if (q->properties.type == KFD_QUEUE_TYPE_COMPUTE) {
  deallocate_hqd(dqm, q);
 } else if (q->properties.type == KFD_QUEUE_TYPE_SDMA) {
  dqm->sdma_queue_count--;
  deallocate_sdma_queue(dqm, q);
 } else if (q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI) {
  dqm->xgmi_sdma_queue_count--;
  deallocate_sdma_queue(dqm, q);
 } else {
  pr_debug("q->properties.type %d is invalid\n",
    q->properties.type);
  return -EINVAL;
 }
 dqm->total_queue_count--;

 deallocate_doorbell(qpd, q);

 retval = mqd_mgr->destroy_mqd(mqd_mgr, q->mqd,
    KFD_PREEMPT_TYPE_WAVEFRONT_RESET,
    KFD_UNMAP_LATENCY_MS,
    q->pipe, q->queue);
 if (retval == -ETIME)
  qpd->reset_wavefronts = 1;

 mqd_mgr->free_mqd(mqd_mgr, q->mqd, q->mqd_mem_obj);

 list_del(&q->list);
 if (list_empty(&qpd->queues_list)) {
  if (qpd->reset_wavefronts) {
   pr_warn("Resetting wave fronts (nocpsch) on dev %p\n",
     dqm->dev);



   dbgdev_wave_reset_wavefronts(dqm->dev,
     qpd->pqm->process);
   qpd->reset_wavefronts = 0;
  }

  deallocate_vmid(dqm, qpd, q);
 }
 qpd->queue_count--;
 if (q->properties.is_active)
  dqm->queue_count--;

 return retval;
}
