
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_group {int dummy; } ;
struct device_state {int domain; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ WARN_ON (int) ;
 int iommu_detach_group (int ,struct iommu_group*) ;
 int iommu_domain_free (int ) ;
 struct iommu_group* iommu_group_get (int *) ;
 int iommu_group_put (struct iommu_group*) ;
 int kfree (struct device_state*) ;

__attribute__((used)) static void free_device_state(struct device_state *dev_state)
{
 struct iommu_group *group;





 group = iommu_group_get(&dev_state->pdev->dev);
 if (WARN_ON(!group))
  return;

 iommu_detach_group(dev_state->domain, group);

 iommu_group_put(group);


 iommu_domain_free(dev_state->domain);


 kfree(dev_state);
}
