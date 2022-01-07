
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct TYPE_3__ {scalar_t__ key_len; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct ccp_ctx {TYPE_2__ u; int complete; } ;
struct ccp_aes_req_ctx {int dummy; } ;


 int ccp_aes_gcm_complete ;
 struct ccp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;

__attribute__((used)) static int ccp_aes_gcm_cra_init(struct crypto_aead *tfm)
{
 struct ccp_ctx *ctx = crypto_aead_ctx(tfm);

 ctx->complete = ccp_aes_gcm_complete;
 ctx->u.aes.key_len = 0;

 crypto_aead_set_reqsize(tfm, sizeof(struct ccp_aes_req_ctx));

 return 0;
}
