
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct pasid_state {int mm; int mn; int pasid; } ;
struct device_state {int max_pasids; } ;


 int amd_iommu_v2_supported () ;
 int clear_pasid_state (struct device_state*,int ) ;
 int device_id (struct pci_dev*) ;
 struct device_state* get_device_state (int ) ;
 struct pasid_state* get_pasid_state (struct device_state*,int) ;
 int might_sleep () ;
 int mmu_notifier_unregister (int *,int ) ;
 int put_device_state (struct device_state*) ;
 int put_pasid_state (struct pasid_state*) ;
 int put_pasid_state_wait (struct pasid_state*) ;

void amd_iommu_unbind_pasid(struct pci_dev *pdev, int pasid)
{
 struct pasid_state *pasid_state;
 struct device_state *dev_state;
 u16 devid;

 might_sleep();

 if (!amd_iommu_v2_supported())
  return;

 devid = device_id(pdev);
 dev_state = get_device_state(devid);
 if (dev_state == ((void*)0))
  return;

 if (pasid < 0 || pasid >= dev_state->max_pasids)
  goto out;

 pasid_state = get_pasid_state(dev_state, pasid);
 if (pasid_state == ((void*)0))
  goto out;




 put_pasid_state(pasid_state);


 clear_pasid_state(dev_state, pasid_state->pasid);





 mmu_notifier_unregister(&pasid_state->mn, pasid_state->mm);

 put_pasid_state_wait(pasid_state);

out:

 put_device_state(dev_state);


 put_device_state(dev_state);
}
