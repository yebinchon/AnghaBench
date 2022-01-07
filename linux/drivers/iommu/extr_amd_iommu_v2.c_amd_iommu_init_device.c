
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct iommu_group {int dummy; } ;
struct device_state {int max_pasids; int * states; int * domain; int list; int count; scalar_t__ pasid_levels; int devid; struct pci_dev* pdev; int wq; int lock; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PASID_MASK ;
 int * __get_device_state (int ) ;
 int amd_iommu_domain_direct_map (int *) ;
 int amd_iommu_domain_enable_v2 (int *,int) ;
 int amd_iommu_v2_supported () ;
 int atomic_set (int *,int) ;
 int device_id (struct pci_dev*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int init_waitqueue_head (int *) ;
 int iommu_attach_group (int *,struct iommu_group*) ;
 int * iommu_domain_alloc (int *) ;
 int iommu_domain_free (int *) ;
 struct iommu_group* iommu_group_get (int *) ;
 int iommu_group_put (struct iommu_group*) ;
 int kfree (struct device_state*) ;
 struct device_state* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int might_sleep () ;
 int pci_bus_type ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int state_list ;
 int state_lock ;

int amd_iommu_init_device(struct pci_dev *pdev, int pasids)
{
 struct device_state *dev_state;
 struct iommu_group *group;
 unsigned long flags;
 int ret, tmp;
 u16 devid;

 might_sleep();

 if (!amd_iommu_v2_supported())
  return -ENODEV;

 if (pasids <= 0 || pasids > (PASID_MASK + 1))
  return -EINVAL;

 devid = device_id(pdev);

 dev_state = kzalloc(sizeof(*dev_state), GFP_KERNEL);
 if (dev_state == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&dev_state->lock);
 init_waitqueue_head(&dev_state->wq);
 dev_state->pdev = pdev;
 dev_state->devid = devid;

 tmp = pasids;
 for (dev_state->pasid_levels = 0; (tmp - 1) & ~0x1ff; tmp >>= 9)
  dev_state->pasid_levels += 1;

 atomic_set(&dev_state->count, 1);
 dev_state->max_pasids = pasids;

 ret = -ENOMEM;
 dev_state->states = (void *)get_zeroed_page(GFP_KERNEL);
 if (dev_state->states == ((void*)0))
  goto out_free_dev_state;

 dev_state->domain = iommu_domain_alloc(&pci_bus_type);
 if (dev_state->domain == ((void*)0))
  goto out_free_states;

 amd_iommu_domain_direct_map(dev_state->domain);

 ret = amd_iommu_domain_enable_v2(dev_state->domain, pasids);
 if (ret)
  goto out_free_domain;

 group = iommu_group_get(&pdev->dev);
 if (!group) {
  ret = -EINVAL;
  goto out_free_domain;
 }

 ret = iommu_attach_group(dev_state->domain, group);
 if (ret != 0)
  goto out_drop_group;

 iommu_group_put(group);

 spin_lock_irqsave(&state_lock, flags);

 if (__get_device_state(devid) != ((void*)0)) {
  spin_unlock_irqrestore(&state_lock, flags);
  ret = -EBUSY;
  goto out_free_domain;
 }

 list_add_tail(&dev_state->list, &state_list);

 spin_unlock_irqrestore(&state_lock, flags);

 return 0;

out_drop_group:
 iommu_group_put(group);

out_free_domain:
 iommu_domain_free(dev_state->domain);

out_free_states:
 free_page((unsigned long)dev_state->states);

out_free_dev_state:
 kfree(dev_state);

 return ret;
}
