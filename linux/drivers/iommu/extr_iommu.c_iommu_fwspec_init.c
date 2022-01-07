
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_ops {int dummy; } ;
struct iommu_fwspec {struct iommu_ops const* ops; struct fwnode_handle* iommu_fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int dev_iommu_fwspec_set (struct device*,struct iommu_fwspec*) ;
 struct iommu_fwspec* kzalloc (int,int ) ;
 int of_node_get (int ) ;
 int to_of_node (struct fwnode_handle*) ;

int iommu_fwspec_init(struct device *dev, struct fwnode_handle *iommu_fwnode,
        const struct iommu_ops *ops)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);

 if (fwspec)
  return ops == fwspec->ops ? 0 : -EINVAL;

 fwspec = kzalloc(sizeof(*fwspec), GFP_KERNEL);
 if (!fwspec)
  return -ENOMEM;

 of_node_get(to_of_node(iommu_fwnode));
 fwspec->iommu_fwnode = iommu_fwnode;
 fwspec->ops = ops;
 dev_iommu_fwspec_set(dev, fwspec);
 return 0;
}
