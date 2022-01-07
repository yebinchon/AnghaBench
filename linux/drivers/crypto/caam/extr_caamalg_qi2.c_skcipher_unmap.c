
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dst; int src; } ;
struct skcipher_edesc {int qm_sg_bytes; int qm_sg_dma; int iv_dma; int dst_nents; int src_nents; } ;
struct device {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 int caam_unmap (struct device*,int ,int ,int ,int ,int ,int,int ,int ,int ) ;
 int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;

__attribute__((used)) static void skcipher_unmap(struct device *dev, struct skcipher_edesc *edesc,
      struct skcipher_request *req)
{
 struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
 int ivsize = crypto_skcipher_ivsize(skcipher);

 caam_unmap(dev, req->src, req->dst, edesc->src_nents, edesc->dst_nents,
     edesc->iv_dma, ivsize, DMA_BIDIRECTIONAL, edesc->qm_sg_dma,
     edesc->qm_sg_bytes);
}
