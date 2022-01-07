
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct device_state {int count; int wq; int list; } ;


 struct device_state* __get_device_state (int ) ;
 int amd_iommu_v2_supported () ;
 int atomic_read (int *) ;
 int device_id (struct pci_dev*) ;
 int free_device_state (struct device_state*) ;
 int free_pasid_states (struct device_state*) ;
 int list_del (int *) ;
 int put_device_state (struct device_state*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int state_lock ;
 int wait_event (int ,int) ;

void amd_iommu_free_device(struct pci_dev *pdev)
{
 struct device_state *dev_state;
 unsigned long flags;
 u16 devid;

 if (!amd_iommu_v2_supported())
  return;

 devid = device_id(pdev);

 spin_lock_irqsave(&state_lock, flags);

 dev_state = __get_device_state(devid);
 if (dev_state == ((void*)0)) {
  spin_unlock_irqrestore(&state_lock, flags);
  return;
 }

 list_del(&dev_state->list);

 spin_unlock_irqrestore(&state_lock, flags);


 free_pasid_states(dev_state);

 put_device_state(dev_state);




 wait_event(dev_state->wq, !atomic_read(&dev_state->count));
 free_device_state(dev_state);
}
