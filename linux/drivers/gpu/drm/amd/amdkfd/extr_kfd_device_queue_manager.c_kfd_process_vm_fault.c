
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process_device {int qpd; } ;
struct kfd_process {int dummy; } ;
struct TYPE_2__ {int (* evict_process_queues ) (struct device_queue_manager*,int *) ;} ;
struct device_queue_manager {TYPE_1__ ops; int dev; } ;


 int EINVAL ;
 struct kfd_process_device* kfd_get_process_device_data (int ,struct kfd_process*) ;
 struct kfd_process* kfd_lookup_process_by_pasid (unsigned int) ;
 int kfd_unref_process (struct kfd_process*) ;
 int stub1 (struct device_queue_manager*,int *) ;

int kfd_process_vm_fault(struct device_queue_manager *dqm,
    unsigned int pasid)
{
 struct kfd_process_device *pdd;
 struct kfd_process *p = kfd_lookup_process_by_pasid(pasid);
 int ret = 0;

 if (!p)
  return -EINVAL;
 pdd = kfd_get_process_device_data(dqm->dev, p);
 if (pdd)
  ret = dqm->ops.evict_process_queues(dqm, &pdd->qpd);
 kfd_unref_process(p);

 return ret;
}
