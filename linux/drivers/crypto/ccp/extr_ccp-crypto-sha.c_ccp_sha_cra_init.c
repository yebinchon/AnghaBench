
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ccp_sha_req_ctx {int dummy; } ;
struct TYPE_3__ {scalar_t__ key_len; } ;
struct TYPE_4__ {TYPE_1__ sha; } ;
struct ccp_ctx {TYPE_2__ u; int complete; } ;


 struct crypto_ahash* __crypto_ahash_cast (struct crypto_tfm*) ;
 int ccp_sha_complete ;
 int crypto_ahash_set_reqsize (struct crypto_ahash*,int) ;
 struct ccp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int ccp_sha_cra_init(struct crypto_tfm *tfm)
{
 struct ccp_ctx *ctx = crypto_tfm_ctx(tfm);
 struct crypto_ahash *ahash = __crypto_ahash_cast(tfm);

 ctx->complete = ccp_sha_complete;
 ctx->u.sha.key_len = 0;

 crypto_ahash_set_reqsize(ahash, sizeof(struct ccp_sha_req_ctx));

 return 0;
}
