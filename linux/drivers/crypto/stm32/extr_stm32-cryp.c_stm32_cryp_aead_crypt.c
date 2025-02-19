
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp_reqctx {unsigned long mode; } ;
struct stm32_cryp_ctx {int dummy; } ;
struct stm32_cryp {int engine; } ;
struct aead_request {int dummy; } ;


 int ENODEV ;
 struct stm32_cryp_reqctx* aead_request_ctx (struct aead_request*) ;
 struct stm32_cryp_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_transfer_aead_request_to_engine (int ,struct aead_request*) ;
 struct stm32_cryp* stm32_cryp_find_dev (struct stm32_cryp_ctx*) ;

__attribute__((used)) static int stm32_cryp_aead_crypt(struct aead_request *req, unsigned long mode)
{
 struct stm32_cryp_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 struct stm32_cryp_reqctx *rctx = aead_request_ctx(req);
 struct stm32_cryp *cryp = stm32_cryp_find_dev(ctx);

 if (!cryp)
  return -ENODEV;

 rctx->mode = mode;

 return crypto_transfer_aead_request_to_engine(cryp->engine, req);
}
