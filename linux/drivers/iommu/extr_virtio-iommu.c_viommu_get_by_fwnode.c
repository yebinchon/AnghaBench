
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viommu_dev {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct viommu_dev* priv; } ;
struct TYPE_3__ {int driver; } ;


 TYPE_2__* dev_to_virtio (struct device*) ;
 struct device* driver_find_device (int *,int *,struct fwnode_handle*,int ) ;
 int put_device (struct device*) ;
 int viommu_match_node ;
 TYPE_1__ virtio_iommu_drv ;

__attribute__((used)) static struct viommu_dev *viommu_get_by_fwnode(struct fwnode_handle *fwnode)
{
 struct device *dev = driver_find_device(&virtio_iommu_drv.driver, ((void*)0),
      fwnode, viommu_match_node);
 put_device(dev);

 return dev ? dev_to_virtio(dev)->priv : ((void*)0);
}
