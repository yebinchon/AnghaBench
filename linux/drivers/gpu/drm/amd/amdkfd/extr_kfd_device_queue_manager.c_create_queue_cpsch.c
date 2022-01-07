
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int is_evicted; scalar_t__ is_active; int tma_addr; int tba_addr; } ;
struct queue {TYPE_2__ properties; int list; int gart_mqd_addr; int mqd_mem_obj; int mqd; } ;
struct qcm_process_device {int queue_count; int queues_list; int evicted; int tma_addr; int tba_addr; } ;
struct mqd_manager {int (* init_mqd ) (struct mqd_manager*,int *,int ,int *,TYPE_2__*) ;int dev; int (* allocate_mqd ) (int ,TYPE_2__*) ;} ;
struct TYPE_4__ {int (* init_sdma_vm ) (struct device_queue_manager*,struct queue*,struct qcm_process_device*) ;} ;
struct device_queue_manager {scalar_t__ total_queue_count; int xgmi_sdma_queue_count; int sdma_queue_count; int queue_count; TYPE_1__ asic_ops; struct mqd_manager** mqd_mgrs; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA_XGMI ;
 int KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES ;
 int allocate_doorbell (struct qcm_process_device*,struct queue*) ;
 int allocate_sdma_queue (struct device_queue_manager*,struct queue*) ;
 int deallocate_doorbell (struct qcm_process_device*,struct queue*) ;
 int deallocate_sdma_queue (struct device_queue_manager*,struct queue*) ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 int execute_queues_cpsch (struct device_queue_manager*,int ,int ) ;
 size_t get_mqd_type_from_queue_type (scalar_t__) ;
 int list_add (int *,int *) ;
 scalar_t__ max_num_of_queues_per_device ;
 int pr_debug (char*,scalar_t__) ;
 int pr_warn (char*,scalar_t__) ;
 int stub1 (struct device_queue_manager*,struct queue*,struct qcm_process_device*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (struct mqd_manager*,int *,int ,int *,TYPE_2__*) ;

__attribute__((used)) static int create_queue_cpsch(struct device_queue_manager *dqm, struct queue *q,
   struct qcm_process_device *qpd)
{
 int retval;
 struct mqd_manager *mqd_mgr;

 if (dqm->total_queue_count >= max_num_of_queues_per_device) {
  pr_warn("Can't create new usermode queue because %d queues were already created\n",
    dqm->total_queue_count);
  retval = -EPERM;
  goto out;
 }

 if (q->properties.type == KFD_QUEUE_TYPE_SDMA ||
  q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI) {
  dqm_lock(dqm);
  retval = allocate_sdma_queue(dqm, q);
  dqm_unlock(dqm);
  if (retval)
   goto out;
 }

 retval = allocate_doorbell(qpd, q);
 if (retval)
  goto out_deallocate_sdma_queue;

 mqd_mgr = dqm->mqd_mgrs[get_mqd_type_from_queue_type(
   q->properties.type)];

 if (q->properties.type == KFD_QUEUE_TYPE_SDMA ||
  q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI)
  dqm->asic_ops.init_sdma_vm(dqm, q, qpd);
 q->properties.tba_addr = qpd->tba_addr;
 q->properties.tma_addr = qpd->tma_addr;
 q->mqd_mem_obj = mqd_mgr->allocate_mqd(mqd_mgr->dev, &q->properties);
 if (!q->mqd_mem_obj) {
  retval = -ENOMEM;
  goto out_deallocate_doorbell;
 }

 dqm_lock(dqm);





 q->properties.is_evicted = !!qpd->evicted;
 mqd_mgr->init_mqd(mqd_mgr, &q->mqd, q->mqd_mem_obj,
    &q->gart_mqd_addr, &q->properties);

 list_add(&q->list, &qpd->queues_list);
 qpd->queue_count++;
 if (q->properties.is_active) {
  dqm->queue_count++;
  retval = execute_queues_cpsch(dqm,
    KFD_UNMAP_QUEUES_FILTER_DYNAMIC_QUEUES, 0);
 }

 if (q->properties.type == KFD_QUEUE_TYPE_SDMA)
  dqm->sdma_queue_count++;
 else if (q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI)
  dqm->xgmi_sdma_queue_count++;




 dqm->total_queue_count++;

 pr_debug("Total of %d queues are accountable so far\n",
   dqm->total_queue_count);

 dqm_unlock(dqm);
 return retval;

out_deallocate_doorbell:
 deallocate_doorbell(qpd, q);
out_deallocate_sdma_queue:
 if (q->properties.type == KFD_QUEUE_TYPE_SDMA ||
  q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI) {
  dqm_lock(dqm);
  deallocate_sdma_queue(dqm, q);
  dqm_unlock(dqm);
 }
out:
 return retval;
}
