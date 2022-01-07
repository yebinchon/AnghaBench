
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dev; TYPE_1__* config; struct viommu_dev* priv; } ;
struct viommu_dev {int iommu; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;int (* reset ) (struct virtio_device*) ;} ;


 int dev_info (int *,char*) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;

__attribute__((used)) static void viommu_remove(struct virtio_device *vdev)
{
 struct viommu_dev *viommu = vdev->priv;

 iommu_device_sysfs_remove(&viommu->iommu);
 iommu_device_unregister(&viommu->iommu);


 vdev->config->reset(vdev);
 vdev->config->del_vqs(vdev);

 dev_info(&vdev->dev, "device removed\n");
}
