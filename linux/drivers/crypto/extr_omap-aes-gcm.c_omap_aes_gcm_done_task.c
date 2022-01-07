
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct omap_aes_reqctx {scalar_t__ auth_tag; } ;
struct omap_aes_dev {int assoc_len; int total; int flags; int authsize; int dev; int * in_sgl; TYPE_1__* aead_req; int * orig_out; int * out_sg; int out_sg_len; int in_sg_len; int * in_sg; } ;
struct TYPE_2__ {int assoclen; int dst; } ;


 int AES_BLOCK_SIZE ;
 int ALIGN (int,int ) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EBADMSG ;
 int FLAGS_ASSOC_DATA_ST_SHIFT ;
 int FLAGS_ENCRYPT ;
 int FLAGS_IN_DATA_ST_SHIFT ;
 int FLAGS_OUT_DATA_ST_SHIFT ;
 struct omap_aes_reqctx* aead_request_ctx (TYPE_1__*) ;
 int dev_err (int ,char*) ;
 int dma_sync_sg_for_device (int ,int *,int ,int ) ;
 int dma_unmap_sg (int ,int *,int ,int ) ;
 int omap_aes_crypt_dma_stop (struct omap_aes_dev*) ;
 int omap_aes_gcm_finish_req (struct omap_aes_dev*,int) ;
 int omap_aes_gcm_handle_queue (struct omap_aes_dev*,int *) ;
 int omap_crypto_cleanup (int *,int *,int,int,int ,int) ;
 int scatterwalk_map_and_copy (scalar_t__,int ,int,int,int) ;

__attribute__((used)) static void omap_aes_gcm_done_task(struct omap_aes_dev *dd)
{
 u8 *tag;
 int alen, clen, i, ret = 0, nsg;
 struct omap_aes_reqctx *rctx;

 alen = ALIGN(dd->assoc_len, AES_BLOCK_SIZE);
 clen = ALIGN(dd->total, AES_BLOCK_SIZE);
 rctx = aead_request_ctx(dd->aead_req);

 nsg = !!(dd->assoc_len && dd->total);

 dma_sync_sg_for_device(dd->dev, dd->out_sg, dd->out_sg_len,
          DMA_FROM_DEVICE);
 dma_unmap_sg(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
 dma_unmap_sg(dd->dev, dd->out_sg, dd->out_sg_len, DMA_FROM_DEVICE);
 omap_aes_crypt_dma_stop(dd);

 omap_crypto_cleanup(dd->out_sg, dd->orig_out,
       dd->aead_req->assoclen, dd->total,
       FLAGS_OUT_DATA_ST_SHIFT, dd->flags);

 if (dd->flags & FLAGS_ENCRYPT)
  scatterwalk_map_and_copy(rctx->auth_tag,
      dd->aead_req->dst,
      dd->total + dd->aead_req->assoclen,
      dd->authsize, 1);

 omap_crypto_cleanup(&dd->in_sgl[0], ((void*)0), 0, alen,
       FLAGS_ASSOC_DATA_ST_SHIFT, dd->flags);

 omap_crypto_cleanup(&dd->in_sgl[nsg], ((void*)0), 0, clen,
       FLAGS_IN_DATA_ST_SHIFT, dd->flags);

 if (!(dd->flags & FLAGS_ENCRYPT)) {
  tag = (u8 *)rctx->auth_tag;
  for (i = 0; i < dd->authsize; i++) {
   if (tag[i]) {
    dev_err(dd->dev, "GCM decryption: Tag Message is wrong\n");
    ret = -EBADMSG;
   }
  }
 }

 omap_aes_gcm_finish_req(dd, ret);
 omap_aes_gcm_handle_queue(dd, ((void*)0));
}
