
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dev; } ;


 int dev_warn (int *,char*) ;

__attribute__((used)) static void viommu_config_changed(struct virtio_device *vdev)
{
 dev_warn(&vdev->dev, "config changed\n");
}
