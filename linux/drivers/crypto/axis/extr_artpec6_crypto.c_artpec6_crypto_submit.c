
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct artpec6_crypto_req_common {int list; TYPE_1__* req; } ;
struct artpec6_crypto {int queue_lock; int queue; int pending; } ;
struct TYPE_2__ {int flags; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int EBUSY ;
 int EINPROGRESS ;
 int artpec6_crypto_busy () ;
 int artpec6_crypto_common_destroy (struct artpec6_crypto_req_common*) ;
 int artpec6_crypto_dev ;
 int artpec6_crypto_start_dma (struct artpec6_crypto_req_common*) ;
 struct artpec6_crypto* dev_get_drvdata (int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int artpec6_crypto_submit(struct artpec6_crypto_req_common *req)
{
 struct artpec6_crypto *ac = dev_get_drvdata(artpec6_crypto_dev);
 int ret = -EBUSY;

 spin_lock_bh(&ac->queue_lock);

 if (!artpec6_crypto_busy()) {
  list_add_tail(&req->list, &ac->pending);
  artpec6_crypto_start_dma(req);
  ret = -EINPROGRESS;
 } else if (req->req->flags & CRYPTO_TFM_REQ_MAY_BACKLOG) {
  list_add_tail(&req->list, &ac->queue);
 } else {
  artpec6_crypto_common_destroy(req);
 }

 spin_unlock_bh(&ac->queue_lock);

 return ret;
}
