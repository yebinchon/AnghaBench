
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtio_device {int dummy; } ;
struct viommu_dev {int vqs; int dev; } ;


 int VIOMMU_NR_VQS ;
 struct virtio_device* dev_to_virtio (int ) ;
 int * viommu_event_handler ;
 int virtio_find_vqs (struct virtio_device*,int ,int ,int **,char const**,int *) ;

__attribute__((used)) static int viommu_init_vqs(struct viommu_dev *viommu)
{
 struct virtio_device *vdev = dev_to_virtio(viommu->dev);
 const char *names[] = { "request", "event" };
 vq_callback_t *callbacks[] = {
  ((void*)0),
  viommu_event_handler,
 };

 return virtio_find_vqs(vdev, VIOMMU_NR_VQS, viommu->vqs, callbacks,
          names, ((void*)0));
}
