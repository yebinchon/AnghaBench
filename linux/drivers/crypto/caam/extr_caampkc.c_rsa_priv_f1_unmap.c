
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsa_priv_f1_pdb {int d_dma; int n_dma; } ;
struct TYPE_2__ {struct rsa_priv_f1_pdb priv_f1; } ;
struct rsa_edesc {TYPE_1__ pdb; } ;
struct device {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {int d_sz; int n_sz; } ;
struct caam_rsa_ctx {struct caam_rsa_key key; } ;
struct akcipher_request {int dummy; } ;


 int DMA_TO_DEVICE ;
 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;

__attribute__((used)) static void rsa_priv_f1_unmap(struct device *dev, struct rsa_edesc *edesc,
         struct akcipher_request *req)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct caam_rsa_key *key = &ctx->key;
 struct rsa_priv_f1_pdb *pdb = &edesc->pdb.priv_f1;

 dma_unmap_single(dev, pdb->n_dma, key->n_sz, DMA_TO_DEVICE);
 dma_unmap_single(dev, pdb->d_dma, key->d_sz, DMA_TO_DEVICE);
}
