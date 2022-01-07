
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_uiom_pd {int domain; int lock; int dev_cnt; int devs; } ;
struct usnic_uiom_dev {int link; struct device* dev; } ;
struct device {int bus; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IOMMU_CAP_CACHE_COHERENCY ;
 int dev_name (struct device*) ;
 int iommu_attach_device (int ,struct device*) ;
 int iommu_capable (int ,int ) ;
 int iommu_detach_device (int ,struct device*) ;
 int kfree (struct usnic_uiom_dev*) ;
 struct usnic_uiom_dev* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usnic_err (char*,int ) ;

int usnic_uiom_attach_dev_to_pd(struct usnic_uiom_pd *pd, struct device *dev)
{
 struct usnic_uiom_dev *uiom_dev;
 int err;

 uiom_dev = kzalloc(sizeof(*uiom_dev), GFP_ATOMIC);
 if (!uiom_dev)
  return -ENOMEM;
 uiom_dev->dev = dev;

 err = iommu_attach_device(pd->domain, dev);
 if (err)
  goto out_free_dev;

 if (!iommu_capable(dev->bus, IOMMU_CAP_CACHE_COHERENCY)) {
  usnic_err("IOMMU of %s does not support cache coherency\n",
    dev_name(dev));
  err = -EINVAL;
  goto out_detach_device;
 }

 spin_lock(&pd->lock);
 list_add_tail(&uiom_dev->link, &pd->devs);
 pd->dev_cnt++;
 spin_unlock(&pd->lock);

 return 0;

out_detach_device:
 iommu_detach_device(pd->domain, dev);
out_free_dev:
 kfree(uiom_dev);
 return err;
}
