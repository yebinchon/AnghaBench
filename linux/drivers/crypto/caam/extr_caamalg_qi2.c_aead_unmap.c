
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dst; int src; } ;
struct aead_edesc {int assoclen_dma; int qm_sg_bytes; int qm_sg_dma; int iv_dma; int dst_nents; int src_nents; } ;


 int DMA_TO_DEVICE ;
 int caam_unmap (struct device*,int ,int ,int ,int ,int ,int,int ,int ,int ) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;

__attribute__((used)) static void aead_unmap(struct device *dev, struct aead_edesc *edesc,
         struct aead_request *req)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 int ivsize = crypto_aead_ivsize(aead);

 caam_unmap(dev, req->src, req->dst, edesc->src_nents, edesc->dst_nents,
     edesc->iv_dma, ivsize, DMA_TO_DEVICE, edesc->qm_sg_dma,
     edesc->qm_sg_bytes);
 dma_unmap_single(dev, edesc->assoclen_dma, 4, DMA_TO_DEVICE);
}
