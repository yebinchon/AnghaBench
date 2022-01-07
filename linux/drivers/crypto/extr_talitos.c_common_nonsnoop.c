
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_private {int dummy; } ;
struct talitos_desc {int * ptr; } ;
struct talitos_edesc {int dma_len; int dma_link_tbl; scalar_t__ src_nents; scalar_t__ dst_nents; int buf; int iv_dma; struct talitos_desc desc; } ;
struct talitos_ctx {unsigned int keylen; int ch; int iv; int dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {unsigned int nbytes; scalar_t__ src; scalar_t__ dst; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int common_nonsnoop_unmap (struct device*,struct talitos_edesc*,struct ablkcipher_request*) ;
 struct talitos_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 unsigned int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_map_sg (struct device*,scalar_t__,int,int ) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int kfree (struct talitos_edesc*) ;
 int map_single_talitos_ptr (struct device*,int *,unsigned int,int ,int ) ;
 int sg_copy_to_buffer (scalar_t__,int,int ,unsigned int) ;
 int talitos_sg_map (struct device*,scalar_t__,unsigned int,struct talitos_edesc*,int *,int,int ,scalar_t__) ;
 int talitos_submit (struct device*,int ,struct talitos_desc*,void (*) (struct device*,struct talitos_desc*,void*,int),struct ablkcipher_request*) ;
 int to_talitos_ptr (int *,int ,unsigned int,int) ;

__attribute__((used)) static int common_nonsnoop(struct talitos_edesc *edesc,
      struct ablkcipher_request *areq,
      void (*callback) (struct device *dev,
          struct talitos_desc *desc,
          void *context, int error))
{
 struct crypto_ablkcipher *cipher = crypto_ablkcipher_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ablkcipher_ctx(cipher);
 struct device *dev = ctx->dev;
 struct talitos_desc *desc = &edesc->desc;
 unsigned int cryptlen = areq->nbytes;
 unsigned int ivsize = crypto_ablkcipher_ivsize(cipher);
 int sg_count, ret;
 bool sync_needed = 0;
 struct talitos_private *priv = dev_get_drvdata(dev);
 bool is_sec1 = has_ftr_sec1(priv);




 to_talitos_ptr(&desc->ptr[1], edesc->iv_dma, ivsize, is_sec1);


 to_talitos_ptr(&desc->ptr[2], ctx->dma_key, ctx->keylen, is_sec1);

 sg_count = edesc->src_nents ?: 1;
 if (is_sec1 && sg_count > 1)
  sg_copy_to_buffer(areq->src, sg_count, edesc->buf,
      cryptlen);
 else
  sg_count = dma_map_sg(dev, areq->src, sg_count,
          (areq->src == areq->dst) ?
          DMA_BIDIRECTIONAL : DMA_TO_DEVICE);



 sg_count = talitos_sg_map(dev, areq->src, cryptlen, edesc,
      &desc->ptr[3], sg_count, 0, 0);
 if (sg_count > 1)
  sync_needed = 1;


 if (areq->src != areq->dst) {
  sg_count = edesc->dst_nents ? : 1;
  if (!is_sec1 || sg_count == 1)
   dma_map_sg(dev, areq->dst, sg_count, DMA_FROM_DEVICE);
 }

 ret = talitos_sg_map(dev, areq->dst, cryptlen, edesc, &desc->ptr[4],
        sg_count, 0, (edesc->src_nents + 1));
 if (ret > 1)
  sync_needed = 1;


 map_single_talitos_ptr(dev, &desc->ptr[5], ivsize, ctx->iv,
          DMA_FROM_DEVICE);



 if (sync_needed)
  dma_sync_single_for_device(dev, edesc->dma_link_tbl,
        edesc->dma_len, DMA_BIDIRECTIONAL);

 ret = talitos_submit(dev, ctx->ch, desc, callback, areq);
 if (ret != -EINPROGRESS) {
  common_nonsnoop_unmap(dev, edesc, areq);
  kfree(edesc);
 }
 return ret;
}
