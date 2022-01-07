
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int data_vq; } ;


 int kfree (int ) ;

__attribute__((used)) static void virtcrypto_free_queues(struct virtio_crypto *vi)
{
 kfree(vi->data_vq);
}
