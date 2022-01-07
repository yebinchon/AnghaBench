
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct device_state {int inv_ctx_cb; } ;
typedef int amd_iommu_invalidate_ctx ;


 int EINVAL ;
 int ENODEV ;
 struct device_state* __get_device_state (int ) ;
 int amd_iommu_v2_supported () ;
 int device_id (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int state_lock ;

int amd_iommu_set_invalidate_ctx_cb(struct pci_dev *pdev,
        amd_iommu_invalidate_ctx cb)
{
 struct device_state *dev_state;
 unsigned long flags;
 u16 devid;
 int ret;

 if (!amd_iommu_v2_supported())
  return -ENODEV;

 devid = device_id(pdev);

 spin_lock_irqsave(&state_lock, flags);

 ret = -EINVAL;
 dev_state = __get_device_state(devid);
 if (dev_state == ((void*)0))
  goto out_unlock;

 dev_state->inv_ctx_cb = cb;

 ret = 0;

out_unlock:
 spin_unlock_irqrestore(&state_lock, flags);

 return ret;
}
