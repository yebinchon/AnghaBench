
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int dummy; } ;
struct talitos_private {int dummy; } ;
struct talitos_desc {int hdr; struct talitos_ptr* ptr; } ;
struct talitos_edesc {unsigned int dma_link_tbl; unsigned int dma_len; unsigned int iv_dma; struct talitos_ptr* link_tbl; scalar_t__ dst_nents; int buf; scalar_t__ src_nents; struct talitos_desc desc; } ;
struct talitos_ctx {unsigned int dma_key; unsigned int authkeylen; unsigned int enckeylen; int ch; int iv; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ src; unsigned int assoclen; scalar_t__ dst; } ;
typedef unsigned int dma_addr_t ;


 int DESC_HDR_MODE1_MDEU_CICV ;
 int DESC_HDR_TYPE_IPSEC_ESP ;
 int DESC_PTR_LNKTBL_RET ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_map_sg (struct device*,scalar_t__,int,int ) ;
 int dma_sync_single_for_device (struct device*,unsigned int,unsigned int,int ) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int ipsec_esp_unmap (struct device*,struct talitos_edesc*,struct aead_request*,int) ;
 int kfree (struct talitos_edesc*) ;
 int map_single_talitos_ptr (struct device*,struct talitos_ptr*,unsigned int,int ,int ) ;
 int sg_copy_to_buffer (scalar_t__,int,int ,unsigned int) ;
 int talitos_sg_map (struct device*,scalar_t__,unsigned int,struct talitos_edesc*,struct talitos_ptr*,int,unsigned int,int) ;
 int talitos_sg_map_ext (struct device*,scalar_t__,unsigned int,struct talitos_edesc*,struct talitos_ptr*,int,unsigned int,int,int,int) ;
 int talitos_submit (struct device*,int ,struct talitos_desc*,void (*) (struct device*,struct talitos_desc*,void*,int),struct aead_request*) ;
 int to_talitos_ptr (struct talitos_ptr*,unsigned int,unsigned int,int) ;
 int to_talitos_ptr_ext_or (struct talitos_ptr*,unsigned int,int) ;
 int to_talitos_ptr_ext_set (struct talitos_ptr*,int ,int) ;

__attribute__((used)) static int ipsec_esp(struct talitos_edesc *edesc, struct aead_request *areq,
       bool encrypt,
       void (*callback)(struct device *dev,
          struct talitos_desc *desc,
          void *context, int error))
{
 struct crypto_aead *aead = crypto_aead_reqtfm(areq);
 unsigned int authsize = crypto_aead_authsize(aead);
 struct talitos_ctx *ctx = crypto_aead_ctx(aead);
 struct device *dev = ctx->dev;
 struct talitos_desc *desc = &edesc->desc;
 unsigned int cryptlen = areq->cryptlen - (encrypt ? 0 : authsize);
 unsigned int ivsize = crypto_aead_ivsize(aead);
 int tbl_off = 0;
 int sg_count, ret;
 int elen = 0;
 bool sync_needed = 0;
 struct talitos_private *priv = dev_get_drvdata(dev);
 bool is_sec1 = has_ftr_sec1(priv);
 bool is_ipsec_esp = desc->hdr & DESC_HDR_TYPE_IPSEC_ESP;
 struct talitos_ptr *civ_ptr = &desc->ptr[is_ipsec_esp ? 2 : 3];
 struct talitos_ptr *ckey_ptr = &desc->ptr[is_ipsec_esp ? 3 : 2];
 dma_addr_t dma_icv = edesc->dma_link_tbl + edesc->dma_len - authsize;


 to_talitos_ptr(&desc->ptr[0], ctx->dma_key, ctx->authkeylen, is_sec1);

 sg_count = edesc->src_nents ?: 1;
 if (is_sec1 && sg_count > 1)
  sg_copy_to_buffer(areq->src, sg_count, edesc->buf,
      areq->assoclen + cryptlen);
 else
  sg_count = dma_map_sg(dev, areq->src, sg_count,
          (areq->src == areq->dst) ?
          DMA_BIDIRECTIONAL : DMA_TO_DEVICE);


 ret = talitos_sg_map(dev, areq->src, areq->assoclen, edesc,
        &desc->ptr[1], sg_count, 0, tbl_off);

 if (ret > 1) {
  tbl_off += ret;
  sync_needed = 1;
 }


 to_talitos_ptr(civ_ptr, edesc->iv_dma, ivsize, is_sec1);


 to_talitos_ptr(ckey_ptr, ctx->dma_key + ctx->authkeylen,
         ctx->enckeylen, is_sec1);







 if (is_ipsec_esp && (desc->hdr & DESC_HDR_MODE1_MDEU_CICV))
  elen = authsize;

 ret = talitos_sg_map_ext(dev, areq->src, cryptlen, edesc, &desc->ptr[4],
     sg_count, areq->assoclen, tbl_off, elen,
     0);

 if (ret > 1) {
  tbl_off += ret;
  sync_needed = 1;
 }


 if (areq->src != areq->dst) {
  sg_count = edesc->dst_nents ? : 1;
  if (!is_sec1 || sg_count == 1)
   dma_map_sg(dev, areq->dst, sg_count, DMA_FROM_DEVICE);
 }

 if (is_ipsec_esp && encrypt)
  elen = authsize;
 else
  elen = 0;
 ret = talitos_sg_map_ext(dev, areq->dst, cryptlen, edesc, &desc->ptr[5],
     sg_count, areq->assoclen, tbl_off, elen,
     is_ipsec_esp && !encrypt);
 tbl_off += ret;

 if (!encrypt && is_ipsec_esp) {
  struct talitos_ptr *tbl_ptr = &edesc->link_tbl[tbl_off];


  to_talitos_ptr_ext_set(tbl_ptr - 1, 0, is_sec1);
  to_talitos_ptr_ext_set(tbl_ptr, DESC_PTR_LNKTBL_RET, is_sec1);


  to_talitos_ptr(tbl_ptr, dma_icv, authsize, is_sec1);
  to_talitos_ptr_ext_or(&desc->ptr[5], authsize, is_sec1);
  sync_needed = 1;
 } else if (!encrypt) {
  to_talitos_ptr(&desc->ptr[6], dma_icv, authsize, is_sec1);
  sync_needed = 1;
 } else if (!is_ipsec_esp) {
  talitos_sg_map(dev, areq->dst, authsize, edesc, &desc->ptr[6],
          sg_count, areq->assoclen + cryptlen, tbl_off);
 }


 if (is_ipsec_esp)
  map_single_talitos_ptr(dev, &desc->ptr[6], ivsize, ctx->iv,
           DMA_FROM_DEVICE);

 if (sync_needed)
  dma_sync_single_for_device(dev, edesc->dma_link_tbl,
        edesc->dma_len,
        DMA_BIDIRECTIONAL);

 ret = talitos_submit(dev, ctx->ch, desc, callback, areq);
 if (ret != -EINPROGRESS) {
  ipsec_esp_unmap(dev, edesc, areq, encrypt);
  kfree(edesc);
 }
 return ret;
}
