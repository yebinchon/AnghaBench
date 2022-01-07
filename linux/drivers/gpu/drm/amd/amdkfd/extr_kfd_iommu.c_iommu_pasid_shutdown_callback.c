
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct kfd_process_device {int dummy; } ;
struct kfd_process {scalar_t__ pasid; int mutex; } ;
struct kfd_dev {TYPE_1__* dbgmgr; } ;
struct TYPE_3__ {scalar_t__ pasid; } ;


 int kfd_dbgmgr_destroy (TYPE_1__*) ;
 int kfd_dbgmgr_unregister (TYPE_1__*,struct kfd_process*) ;
 struct kfd_dev* kfd_device_by_pci_dev (struct pci_dev*) ;
 int * kfd_get_dbgmgr_mutex () ;
 struct kfd_process_device* kfd_get_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 struct kfd_process* kfd_lookup_process_by_pasid (int) ;
 int kfd_process_dequeue_from_device (struct kfd_process_device*) ;
 int kfd_unref_process (struct kfd_process*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void iommu_pasid_shutdown_callback(struct pci_dev *pdev, int pasid)
{
 struct kfd_dev *dev = kfd_device_by_pci_dev(pdev);
 struct kfd_process *p;
 struct kfd_process_device *pdd;

 if (!dev)
  return;






 p = kfd_lookup_process_by_pasid(pasid);
 if (!p)
  return;

 pr_debug("Unbinding process %d from IOMMU\n", pasid);

 mutex_lock(kfd_get_dbgmgr_mutex());

 if (dev->dbgmgr && dev->dbgmgr->pasid == p->pasid) {
  if (!kfd_dbgmgr_unregister(dev->dbgmgr, p)) {
   kfd_dbgmgr_destroy(dev->dbgmgr);
   dev->dbgmgr = ((void*)0);
  }
 }

 mutex_unlock(kfd_get_dbgmgr_mutex());

 mutex_lock(&p->mutex);

 pdd = kfd_get_process_device_data(dev, p);
 if (pdd)



  kfd_process_dequeue_from_device(pdd);

 mutex_unlock(&p->mutex);

 kfd_unref_process(p);
}
