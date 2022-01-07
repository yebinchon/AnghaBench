
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int is_evicted; scalar_t__ type; scalar_t__ is_active; int tma_addr; int tba_addr; int vmid; } ;
struct queue {TYPE_3__ properties; int mqd_mem_obj; int mqd; int list; int queue; int pipe; TYPE_2__* process; int gart_mqd_addr; } ;
struct qcm_process_device {int queues_list; int queue_count; int tma_addr; int tba_addr; int evicted; int vmid; } ;
struct mqd_manager {int (* load_mqd ) (struct mqd_manager*,int ,int ,int ,TYPE_3__*,scalar_t__) ;int (* free_mqd ) (struct mqd_manager*,int ,int ) ;int (* init_mqd ) (struct mqd_manager*,int *,int ,int *,TYPE_3__*) ;int dev; int (* allocate_mqd ) (int ,TYPE_3__*) ;} ;
struct TYPE_7__ {int (* init_sdma_vm ) (struct device_queue_manager*,struct queue*,struct qcm_process_device*) ;} ;
struct device_queue_manager {scalar_t__ total_queue_count; int xgmi_sdma_queue_count; int sdma_queue_count; int queue_count; TYPE_1__ asic_ops; struct mqd_manager** mqd_mgrs; } ;
struct TYPE_10__ {scalar_t__ mm; } ;
struct TYPE_8__ {scalar_t__ mm; } ;


 int EFAULT ;
 int ENOMEM ;
 int EPERM ;
 scalar_t__ KFD_QUEUE_TYPE_COMPUTE ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA ;
 scalar_t__ KFD_QUEUE_TYPE_SDMA_XGMI ;
 scalar_t__ WARN (int,char*) ;
 int allocate_doorbell (struct qcm_process_device*,struct queue*) ;
 int allocate_hqd (struct device_queue_manager*,struct queue*) ;
 int allocate_sdma_queue (struct device_queue_manager*,struct queue*) ;
 int allocate_vmid (struct device_queue_manager*,struct qcm_process_device*,struct queue*) ;
 TYPE_6__* current ;
 int deallocate_doorbell (struct qcm_process_device*,struct queue*) ;
 int deallocate_hqd (struct device_queue_manager*,struct queue*) ;
 int deallocate_sdma_queue (struct device_queue_manager*,struct queue*) ;
 int deallocate_vmid (struct device_queue_manager*,struct qcm_process_device*,struct queue*) ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 size_t get_mqd_type_from_queue_type (scalar_t__) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ max_num_of_queues_per_device ;
 int pr_debug (char*,scalar_t__,...) ;
 int pr_warn (char*,scalar_t__) ;
 int print_queue (struct queue*) ;
 int stub1 (struct device_queue_manager*,struct queue*,struct qcm_process_device*) ;
 int stub2 (int ,TYPE_3__*) ;
 int stub3 (struct mqd_manager*,int *,int ,int *,TYPE_3__*) ;
 int stub4 (struct mqd_manager*,int ,int ,int ,TYPE_3__*,scalar_t__) ;
 int stub5 (struct mqd_manager*,int ,int ) ;

__attribute__((used)) static int create_queue_nocpsch(struct device_queue_manager *dqm,
    struct queue *q,
    struct qcm_process_device *qpd)
{
 struct mqd_manager *mqd_mgr;
 int retval;

 print_queue(q);

 dqm_lock(dqm);

 if (dqm->total_queue_count >= max_num_of_queues_per_device) {
  pr_warn("Can't create new usermode queue because %d queues were already created\n",
    dqm->total_queue_count);
  retval = -EPERM;
  goto out_unlock;
 }

 if (list_empty(&qpd->queues_list)) {
  retval = allocate_vmid(dqm, qpd, q);
  if (retval)
   goto out_unlock;
 }
 q->properties.vmid = qpd->vmid;





 q->properties.is_evicted = !!qpd->evicted;

 q->properties.tba_addr = qpd->tba_addr;
 q->properties.tma_addr = qpd->tma_addr;

 mqd_mgr = dqm->mqd_mgrs[get_mqd_type_from_queue_type(
   q->properties.type)];
 if (q->properties.type == KFD_QUEUE_TYPE_COMPUTE) {
  retval = allocate_hqd(dqm, q);
  if (retval)
   goto deallocate_vmid;
  pr_debug("Loading mqd to hqd on pipe %d, queue %d\n",
   q->pipe, q->queue);
 } else if (q->properties.type == KFD_QUEUE_TYPE_SDMA ||
  q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI) {
  retval = allocate_sdma_queue(dqm, q);
  if (retval)
   goto deallocate_vmid;
  dqm->asic_ops.init_sdma_vm(dqm, q, qpd);
 }

 retval = allocate_doorbell(qpd, q);
 if (retval)
  goto out_deallocate_hqd;


 dqm_unlock(dqm);
 q->mqd_mem_obj = mqd_mgr->allocate_mqd(mqd_mgr->dev, &q->properties);
 dqm_lock(dqm);

 if (!q->mqd_mem_obj) {
  retval = -ENOMEM;
  goto out_deallocate_doorbell;
 }
 mqd_mgr->init_mqd(mqd_mgr, &q->mqd, q->mqd_mem_obj,
    &q->gart_mqd_addr, &q->properties);
 if (q->properties.is_active) {

  if (WARN(q->process->mm != current->mm,
     "should only run in user thread"))
   retval = -EFAULT;
  else
   retval = mqd_mgr->load_mqd(mqd_mgr, q->mqd, q->pipe,
     q->queue, &q->properties, current->mm);
  if (retval)
   goto out_free_mqd;
 }

 list_add(&q->list, &qpd->queues_list);
 qpd->queue_count++;
 if (q->properties.is_active)
  dqm->queue_count++;

 if (q->properties.type == KFD_QUEUE_TYPE_SDMA)
  dqm->sdma_queue_count++;
 else if (q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI)
  dqm->xgmi_sdma_queue_count++;





 dqm->total_queue_count++;
 pr_debug("Total of %d queues are accountable so far\n",
   dqm->total_queue_count);
 goto out_unlock;

out_free_mqd:
 mqd_mgr->free_mqd(mqd_mgr, q->mqd, q->mqd_mem_obj);
out_deallocate_doorbell:
 deallocate_doorbell(qpd, q);
out_deallocate_hqd:
 if (q->properties.type == KFD_QUEUE_TYPE_COMPUTE)
  deallocate_hqd(dqm, q);
 else if (q->properties.type == KFD_QUEUE_TYPE_SDMA ||
  q->properties.type == KFD_QUEUE_TYPE_SDMA_XGMI)
  deallocate_sdma_queue(dqm, q);
deallocate_vmid:
 if (list_empty(&qpd->queues_list))
  deallocate_vmid(dqm, qpd, q);
out_unlock:
 dqm_unlock(dqm);
 return retval;
}
