
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tfms; } ;
struct crypt_config {int tfms_count; TYPE_1__ cipher_tfm; int req_pool; } ;
struct TYPE_4__ {scalar_t__ req; } ;
struct convert_context {int cc_sector; TYPE_2__ r; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int GFP_NOIO ;
 int dmreq_of_req (struct crypt_config*,scalar_t__) ;
 int kcryptd_async_done ;
 scalar_t__ mempool_alloc (int *,int ) ;
 int skcipher_request_set_callback (scalar_t__,int ,int ,int ) ;
 int skcipher_request_set_tfm (scalar_t__,int ) ;

__attribute__((used)) static void crypt_alloc_req_skcipher(struct crypt_config *cc,
         struct convert_context *ctx)
{
 unsigned key_index = ctx->cc_sector & (cc->tfms_count - 1);

 if (!ctx->r.req)
  ctx->r.req = mempool_alloc(&cc->req_pool, GFP_NOIO);

 skcipher_request_set_tfm(ctx->r.req, cc->cipher_tfm.tfms[key_index]);





 skcipher_request_set_callback(ctx->r.req,
     CRYPTO_TFM_REQ_MAY_BACKLOG,
     kcryptd_async_done, dmreq_of_req(cc, ctx->r.req));
}
