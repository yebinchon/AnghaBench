
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * tfms_aead; } ;
struct crypt_config {TYPE_2__ cipher_tfm; int req_pool; } ;
struct TYPE_3__ {scalar_t__ req_aead; } ;
struct convert_context {TYPE_1__ r; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int GFP_NOIO ;
 int aead_request_set_callback (scalar_t__,int ,int ,int ) ;
 int aead_request_set_tfm (scalar_t__,int ) ;
 int dmreq_of_req (struct crypt_config*,scalar_t__) ;
 int kcryptd_async_done ;
 scalar_t__ mempool_alloc (int *,int ) ;

__attribute__((used)) static void crypt_alloc_req_aead(struct crypt_config *cc,
     struct convert_context *ctx)
{
 if (!ctx->r.req_aead)
  ctx->r.req_aead = mempool_alloc(&cc->req_pool, GFP_NOIO);

 aead_request_set_tfm(ctx->r.req_aead, cc->cipher_tfm.tfms_aead[0]);





 aead_request_set_callback(ctx->r.req_aead,
     CRYPTO_TFM_REQ_MAY_BACKLOG,
     kcryptd_async_done, dmreq_of_req(cc, ctx->r.req_aead));
}
