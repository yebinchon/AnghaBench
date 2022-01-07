
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int * nonce; } ;
struct TYPE_5__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; } ;
struct ccp_aes_req_ctx {int * rfc3686_iv; int * rfc3686_info; } ;
struct TYPE_6__ {int tfm; } ;
struct ablkcipher_request {int * info; TYPE_3__ base; } ;
typedef int __be32 ;


 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 struct ccp_aes_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int ccp_aes_crypt (struct ablkcipher_request*,int) ;
 int cpu_to_be32 (int) ;
 struct ccp_ctx* crypto_tfm_ctx (int ) ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static int ccp_aes_rfc3686_crypt(struct ablkcipher_request *req, bool encrypt)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct ccp_aes_req_ctx *rctx = ablkcipher_request_ctx(req);
 u8 *iv;


 iv = rctx->rfc3686_iv;
 memcpy(iv, ctx->u.aes.nonce, CTR_RFC3686_NONCE_SIZE);

 iv += CTR_RFC3686_NONCE_SIZE;
 memcpy(iv, req->info, CTR_RFC3686_IV_SIZE);

 iv += CTR_RFC3686_IV_SIZE;
 *(__be32 *)iv = cpu_to_be32(1);


 rctx->rfc3686_info = req->info;
 req->info = rctx->rfc3686_iv;

 return ccp_aes_crypt(req, encrypt);
}
