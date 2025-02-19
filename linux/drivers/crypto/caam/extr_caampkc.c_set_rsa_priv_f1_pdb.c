
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec4_sg_entry {int dummy; } ;
struct rsa_priv_f1_pdb {int sgf; void* f_dma; void* g_dma; void* n_dma; void* d_dma; } ;
struct TYPE_2__ {struct rsa_priv_f1_pdb priv_f1; } ;
struct rsa_edesc {int src_nents; int dst_nents; void* sec4_sg_dma; TYPE_1__ pdb; } ;
struct device {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_req_ctx {int fixup_src; } ;
struct caam_rsa_key {int n_sz; int d_sz; int d; int n; } ;
struct caam_rsa_ctx {struct device* dev; struct caam_rsa_key key; } ;
struct akcipher_request {int dst; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int RSA_PDB_D_SHIFT ;
 int RSA_PRIV_PDB_SGF_F ;
 int RSA_PRIV_PDB_SGF_G ;
 struct caam_rsa_req_ctx* akcipher_request_ctx (struct akcipher_request*) ;
 struct caam_rsa_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 struct crypto_akcipher* crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int dev_err (struct device*,char*) ;
 void* dma_map_single (struct device*,int ,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,int,int ) ;
 void* sg_dma_address (int ) ;

__attribute__((used)) static int set_rsa_priv_f1_pdb(struct akcipher_request *req,
          struct rsa_edesc *edesc)
{
 struct crypto_akcipher *tfm = crypto_akcipher_reqtfm(req);
 struct caam_rsa_ctx *ctx = akcipher_tfm_ctx(tfm);
 struct caam_rsa_key *key = &ctx->key;
 struct device *dev = ctx->dev;
 struct rsa_priv_f1_pdb *pdb = &edesc->pdb.priv_f1;
 int sec4_sg_index = 0;

 pdb->n_dma = dma_map_single(dev, key->n, key->n_sz, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, pdb->n_dma)) {
  dev_err(dev, "Unable to map modulus memory\n");
  return -ENOMEM;
 }

 pdb->d_dma = dma_map_single(dev, key->d, key->d_sz, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, pdb->d_dma)) {
  dev_err(dev, "Unable to map RSA private exponent memory\n");
  dma_unmap_single(dev, pdb->n_dma, key->n_sz, DMA_TO_DEVICE);
  return -ENOMEM;
 }

 if (edesc->src_nents > 1) {
  pdb->sgf |= RSA_PRIV_PDB_SGF_G;
  pdb->g_dma = edesc->sec4_sg_dma;
  sec4_sg_index += edesc->src_nents;
 } else {
  struct caam_rsa_req_ctx *req_ctx = akcipher_request_ctx(req);

  pdb->g_dma = sg_dma_address(req_ctx->fixup_src);
 }

 if (edesc->dst_nents > 1) {
  pdb->sgf |= RSA_PRIV_PDB_SGF_F;
  pdb->f_dma = edesc->sec4_sg_dma +
        sec4_sg_index * sizeof(struct sec4_sg_entry);
 } else {
  pdb->f_dma = sg_dma_address(req->dst);
 }

 pdb->sgf |= (key->d_sz << RSA_PDB_D_SHIFT) | key->n_sz;

 return 0;
}
