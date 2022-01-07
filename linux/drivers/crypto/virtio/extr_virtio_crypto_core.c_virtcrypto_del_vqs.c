
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; } ;
struct virtio_crypto {struct virtio_device* vdev; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;} ;


 int stub1 (struct virtio_device*) ;
 int virtcrypto_clean_affinity (struct virtio_crypto*,int) ;
 int virtcrypto_free_queues (struct virtio_crypto*) ;

__attribute__((used)) static void virtcrypto_del_vqs(struct virtio_crypto *vcrypto)
{
 struct virtio_device *vdev = vcrypto->vdev;

 virtcrypto_clean_affinity(vcrypto, -1);

 vdev->config->del_vqs(vdev);

 virtcrypto_free_queues(vcrypto);
}
