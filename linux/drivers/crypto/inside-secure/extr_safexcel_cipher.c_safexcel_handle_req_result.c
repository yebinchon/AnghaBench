
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int iv; } ;
struct scatterlist {int dummy; } ;
struct safexcel_result_desc {int dummy; } ;
struct safexcel_crypto_priv {int dev; TYPE_1__* ring; } ;
struct safexcel_cipher_req {scalar_t__ direction; int nr_dst; int nr_src; int rdescs; } ;
struct safexcel_cipher_ctx {scalar_t__ mode; int aead; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_async_request {int dummy; } ;
struct TYPE_2__ {int rdr; } ;


 scalar_t__ CONTEXT_CONTROL_CRYPTO_MODE_CBC ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ IS_ERR (struct safexcel_result_desc*) ;
 int PTR_ERR (struct safexcel_result_desc*) ;
 scalar_t__ SAFEXCEL_ENCRYPT ;
 struct safexcel_cipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 scalar_t__ crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int dev_err (int ,char*) ;
 int dma_unmap_sg (int ,struct scatterlist*,int ,int ) ;
 scalar_t__ likely (int) ;
 int safexcel_complete (struct safexcel_crypto_priv*,int) ;
 int safexcel_rdesc_check_errors (struct safexcel_crypto_priv*,struct safexcel_result_desc*) ;
 struct safexcel_result_desc* safexcel_ring_next_rptr (struct safexcel_crypto_priv*,int *) ;
 int sg_pcopy_to_buffer (struct scatterlist*,int ,int ,scalar_t__,scalar_t__) ;
 struct skcipher_request* skcipher_request_cast (struct crypto_async_request*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int safexcel_handle_req_result(struct safexcel_crypto_priv *priv, int ring,
          struct crypto_async_request *async,
          struct scatterlist *src,
          struct scatterlist *dst,
          unsigned int cryptlen,
          struct safexcel_cipher_req *sreq,
          bool *should_complete, int *ret)
{
 struct skcipher_request *areq = skcipher_request_cast(async);
 struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(areq);
 struct safexcel_cipher_ctx *ctx = crypto_skcipher_ctx(skcipher);
 struct safexcel_result_desc *rdesc;
 int ndesc = 0;

 *ret = 0;

 if (unlikely(!sreq->rdescs))
  return 0;

 while (sreq->rdescs--) {
  rdesc = safexcel_ring_next_rptr(priv, &priv->ring[ring].rdr);
  if (IS_ERR(rdesc)) {
   dev_err(priv->dev,
    "cipher: result: could not retrieve the result descriptor\n");
   *ret = PTR_ERR(rdesc);
   break;
  }

  if (likely(!*ret))
   *ret = safexcel_rdesc_check_errors(priv, rdesc);

  ndesc++;
 }

 safexcel_complete(priv, ring);

 if (src == dst) {
  dma_unmap_sg(priv->dev, src, sreq->nr_src, DMA_BIDIRECTIONAL);
 } else {
  dma_unmap_sg(priv->dev, src, sreq->nr_src, DMA_TO_DEVICE);
  dma_unmap_sg(priv->dev, dst, sreq->nr_dst, DMA_FROM_DEVICE);
 }




 if ((!ctx->aead) && (ctx->mode == CONTEXT_CONTROL_CRYPTO_MODE_CBC) &&
     (sreq->direction == SAFEXCEL_ENCRYPT)) {

  sg_pcopy_to_buffer(dst, sreq->nr_dst, areq->iv,
       crypto_skcipher_ivsize(skcipher),
       (cryptlen -
        crypto_skcipher_ivsize(skcipher)));
 }

 *should_complete = 1;

 return ndesc;
}
