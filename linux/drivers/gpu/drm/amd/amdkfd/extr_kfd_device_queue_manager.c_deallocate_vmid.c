
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vmid; } ;
struct queue {TYPE_2__ properties; TYPE_5__* device; } ;
struct qcm_process_device {int vmid; } ;
struct device_queue_manager {int vmid_bitmap; TYPE_4__* dev; } ;
struct TYPE_10__ {TYPE_1__* device_info; } ;
struct TYPE_8__ {int first_vmid_kfd; } ;
struct TYPE_9__ {TYPE_3__ vm_info; } ;
struct TYPE_6__ {scalar_t__ asic_family; } ;


 scalar_t__ CHIP_HAWAII ;
 scalar_t__ flush_texture_cache_nocpsch (TYPE_5__*,struct qcm_process_device*) ;
 int kfd_flush_tlb (int ) ;
 int pr_err (char*) ;
 int qpd_to_pdd (struct qcm_process_device*) ;
 int set_pasid_vmid_mapping (struct device_queue_manager*,int ,int) ;

__attribute__((used)) static void deallocate_vmid(struct device_queue_manager *dqm,
    struct qcm_process_device *qpd,
    struct queue *q)
{
 int bit = qpd->vmid - dqm->dev->vm_info.first_vmid_kfd;


 if (q->device->device_info->asic_family == CHIP_HAWAII)
  if (flush_texture_cache_nocpsch(q->device, qpd))
   pr_err("Failed to flush TC\n");

 kfd_flush_tlb(qpd_to_pdd(qpd));


 set_pasid_vmid_mapping(dqm, 0, qpd->vmid);

 dqm->vmid_bitmap |= (1 << bit);
 qpd->vmid = 0;
 q->properties.vmid = 0;
}
