
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct virtio_crypto* priv; } ;
struct virtio_crypto {int dummy; } ;


 int virtcrypto_update_status (struct virtio_crypto*) ;

__attribute__((used)) static void virtcrypto_config_changed(struct virtio_device *vdev)
{
 struct virtio_crypto *vcrypto = vdev->priv;

 virtcrypto_update_status(vcrypto);
}
