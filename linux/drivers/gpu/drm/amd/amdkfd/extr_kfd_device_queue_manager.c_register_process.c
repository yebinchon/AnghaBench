
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct qcm_process_device {int page_table_base; } ;
struct kfd_process_device {int vm; } ;
struct TYPE_2__ {int (* update_qpd ) (struct device_queue_manager*,struct qcm_process_device*) ;} ;
struct device_queue_manager {int dev; int processes_count; TYPE_1__ asic_ops; int queues; } ;
struct device_process_node {int list; struct qcm_process_device* qpd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_amdkfd_gpuvm_get_process_page_dir (int ) ;
 int dqm_lock (struct device_queue_manager*) ;
 int dqm_unlock (struct device_queue_manager*) ;
 int kfd_inc_compute_active (int ) ;
 struct device_process_node* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_debug (char*,int ) ;
 struct kfd_process_device* qpd_to_pdd (struct qcm_process_device*) ;
 int stub1 (struct device_queue_manager*,struct qcm_process_device*) ;

__attribute__((used)) static int register_process(struct device_queue_manager *dqm,
     struct qcm_process_device *qpd)
{
 struct device_process_node *n;
 struct kfd_process_device *pdd;
 uint64_t pd_base;
 int retval;

 n = kzalloc(sizeof(*n), GFP_KERNEL);
 if (!n)
  return -ENOMEM;

 n->qpd = qpd;

 pdd = qpd_to_pdd(qpd);

 pd_base = amdgpu_amdkfd_gpuvm_get_process_page_dir(pdd->vm);

 dqm_lock(dqm);
 list_add(&n->list, &dqm->queues);


 qpd->page_table_base = pd_base;
 pr_debug("Updated PD address to 0x%llx\n", pd_base);

 retval = dqm->asic_ops.update_qpd(dqm, qpd);

 dqm->processes_count++;

 dqm_unlock(dqm);




 kfd_inc_compute_active(dqm->dev);

 return retval;
}
