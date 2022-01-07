
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int mutex; struct iommu_domain* default_domain; } ;
struct iommu_domain {unsigned long type; } ;
struct device {int bus; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 unsigned long IOMMU_DOMAIN_DMA ;
 int __iommu_attach_group (struct iommu_domain*,struct iommu_group*) ;
 struct iommu_domain* __iommu_domain_alloc (int ,unsigned long) ;
 int dev_info (struct device*,char*,char*) ;
 int iommu_domain_free (struct iommu_domain*) ;
 int iommu_group_create_direct_mappings (struct iommu_group*,struct device*) ;
 int iommu_group_device_count (struct iommu_group*) ;
 struct iommu_group* iommu_group_get (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
request_default_domain_for_dev(struct device *dev, unsigned long type)
{
 struct iommu_domain *domain;
 struct iommu_group *group;
 int ret;


 group = iommu_group_get(dev);
 if (!group)
  return -EINVAL;

 mutex_lock(&group->mutex);

 ret = 0;
 if (group->default_domain && group->default_domain->type == type)
  goto out;


 ret = -EBUSY;
 if (iommu_group_device_count(group) != 1)
  goto out;

 ret = -ENOMEM;
 domain = __iommu_domain_alloc(dev->bus, type);
 if (!domain)
  goto out;


 ret = __iommu_attach_group(domain, group);
 if (ret) {
  iommu_domain_free(domain);
  goto out;
 }

 iommu_group_create_direct_mappings(group, dev);


 if (group->default_domain)
  iommu_domain_free(group->default_domain);
 group->default_domain = domain;

 dev_info(dev, "Using iommu %s mapping\n",
   type == IOMMU_DOMAIN_DMA ? "dma" : "direct");

 ret = 0;
out:
 mutex_unlock(&group->mutex);
 iommu_group_put(group);

 return ret;
}
