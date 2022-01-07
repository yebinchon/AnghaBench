
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {int dummy; } ;
struct virtio_crypto_request {int sgs; int req_data; } ;
struct virtio_crypto {int max_data_queues; TYPE_1__* data_vq; } ;
struct TYPE_2__ {struct virtqueue* vq; } ;


 int kfree (int ) ;
 struct virtio_crypto_request* virtqueue_detach_unused_buf (struct virtqueue*) ;

__attribute__((used)) static void virtcrypto_free_unused_reqs(struct virtio_crypto *vcrypto)
{
 struct virtio_crypto_request *vc_req;
 int i;
 struct virtqueue *vq;

 for (i = 0; i < vcrypto->max_data_queues; i++) {
  vq = vcrypto->data_vq[i].vq;
  while ((vc_req = virtqueue_detach_unused_buf(vq)) != ((void*)0)) {
   kfree(vc_req->req_data);
   kfree(vc_req->sgs);
  }
 }
}
