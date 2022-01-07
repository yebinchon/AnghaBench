
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int vmid; } ;
struct queue {TYPE_3__ properties; TYPE_2__* process; } ;
struct qcm_process_device {int vmid; int sh_hidden_private_base; int page_table_base; } ;
struct device_queue_manager {int vmid_bitmap; TYPE_5__* dev; } ;
struct TYPE_6__ {int first_vmid_kfd; } ;
struct TYPE_10__ {int kgd; TYPE_4__* kfd2kgd; TYPE_1__ vm_info; } ;
struct TYPE_9__ {int (* set_scratch_backing_va ) (int ,int ,int) ;int (* set_vm_context_page_table_base ) (int ,int,int ) ;} ;
struct TYPE_7__ {int pasid; } ;


 int ENOMEM ;
 int ffs (int) ;
 int kfd_flush_tlb (int ) ;
 int pr_debug (char*,int) ;
 int program_sh_mem_settings (struct device_queue_manager*,struct qcm_process_device*) ;
 int qpd_to_pdd (struct qcm_process_device*) ;
 int set_pasid_vmid_mapping (struct device_queue_manager*,int ,int) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int ,int) ;

__attribute__((used)) static int allocate_vmid(struct device_queue_manager *dqm,
   struct qcm_process_device *qpd,
   struct queue *q)
{
 int bit, allocated_vmid;

 if (dqm->vmid_bitmap == 0)
  return -ENOMEM;

 bit = ffs(dqm->vmid_bitmap) - 1;
 dqm->vmid_bitmap &= ~(1 << bit);

 allocated_vmid = bit + dqm->dev->vm_info.first_vmid_kfd;
 pr_debug("vmid allocation %d\n", allocated_vmid);
 qpd->vmid = allocated_vmid;
 q->properties.vmid = allocated_vmid;

 set_pasid_vmid_mapping(dqm, q->process->pasid, q->properties.vmid);
 program_sh_mem_settings(dqm, qpd);




 dqm->dev->kfd2kgd->set_vm_context_page_table_base(dqm->dev->kgd,
   qpd->vmid,
   qpd->page_table_base);

 kfd_flush_tlb(qpd_to_pdd(qpd));

 dqm->dev->kfd2kgd->set_scratch_backing_va(
  dqm->dev->kgd, qpd->sh_hidden_private_base, qpd->vmid);

 return 0;
}
