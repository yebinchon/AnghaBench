
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct crypto_aead {int dummy; } ;
struct chcr_aead_reqctx {int op; } ;
struct aead_request {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 struct uld_ctx* ULD_CTX (int ) ;
 int a_ctx (struct crypto_aead*) ;
 struct chcr_aead_reqctx* aead_request_ctx (struct aead_request*) ;
 int chcr_aead_dma_unmap (int *,struct aead_request*,int ) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;

inline void chcr_aead_common_exit(struct aead_request *req)
{
 struct chcr_aead_reqctx *reqctx = aead_request_ctx(req);
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct uld_ctx *u_ctx = ULD_CTX(a_ctx(tfm));

 chcr_aead_dma_unmap(&u_ctx->lldi.pdev->dev, req, reqctx->op);
}
