
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsgl_walk {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct cpl_rx_phys_dsgl {int dummy; } ;
struct chcr_context {int pci_chan_id; } ;
struct chcr_aead_reqctx {scalar_t__ op; int iv_dma; scalar_t__ b0_len; } ;
struct aead_request {int dst; scalar_t__ cryptlen; scalar_t__ assoclen; } ;


 scalar_t__ IV ;
 struct chcr_context* a_ctx (struct crypto_aead*) ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int dsgl_walk_add_page (struct dsgl_walk*,scalar_t__,int ) ;
 int dsgl_walk_add_sg (struct dsgl_walk*,int ,scalar_t__,int ) ;
 int dsgl_walk_end (struct dsgl_walk*,unsigned short,int ) ;
 int dsgl_walk_init (struct dsgl_walk*,struct cpl_rx_phys_dsgl*) ;

void chcr_add_aead_dst_ent(struct aead_request *req,
      struct cpl_rx_phys_dsgl *phys_cpl,
      unsigned short qid)
{
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct dsgl_walk dsgl_walk;
 unsigned int authsize = crypto_aead_authsize(tfm);
 struct chcr_context *ctx = a_ctx(tfm);
 u32 temp;

 dsgl_walk_init(&dsgl_walk, phys_cpl);
 dsgl_walk_add_page(&dsgl_walk, IV + reqctx->b0_len, reqctx->iv_dma);
 temp = req->assoclen + req->cryptlen +
  (reqctx->op ? -authsize : authsize);
 dsgl_walk_add_sg(&dsgl_walk, req->dst, temp, 0);
 dsgl_walk_end(&dsgl_walk, qid, ctx->pci_chan_id);
}
