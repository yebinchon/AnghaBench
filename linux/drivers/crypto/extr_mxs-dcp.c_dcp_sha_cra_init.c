
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcp_sha_req_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;

__attribute__((used)) static int dcp_sha_cra_init(struct crypto_tfm *tfm)
{
 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct dcp_sha_req_ctx));
 return 0;
}
