
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtqueue {unsigned int index; TYPE_1__* vdev; } ;
struct virtio_crypto_request {int (* alg_cb ) (struct virtio_crypto_request*,unsigned int) ;} ;
struct virtio_crypto {TYPE_2__* data_vq; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {struct virtio_crypto* priv; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct virtio_crypto_request*,unsigned int) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_enable_cb (struct virtqueue*) ;
 struct virtio_crypto_request* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;

__attribute__((used)) static void virtcrypto_dataq_callback(struct virtqueue *vq)
{
 struct virtio_crypto *vcrypto = vq->vdev->priv;
 struct virtio_crypto_request *vc_req;
 unsigned long flags;
 unsigned int len;
 unsigned int qid = vq->index;

 spin_lock_irqsave(&vcrypto->data_vq[qid].lock, flags);
 do {
  virtqueue_disable_cb(vq);
  while ((vc_req = virtqueue_get_buf(vq, &len)) != ((void*)0)) {
   spin_unlock_irqrestore(
    &vcrypto->data_vq[qid].lock, flags);
   if (vc_req->alg_cb)
    vc_req->alg_cb(vc_req, len);
   spin_lock_irqsave(
    &vcrypto->data_vq[qid].lock, flags);
  }
 } while (!virtqueue_enable_cb(vq));
 spin_unlock_irqrestore(&vcrypto->data_vq[qid].lock, flags);
}
