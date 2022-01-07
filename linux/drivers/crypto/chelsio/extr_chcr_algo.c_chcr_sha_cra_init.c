
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct chcr_ahash_req_ctx {int dummy; } ;


 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int chcr_device_init (int ) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int chcr_sha_cra_init(struct crypto_tfm *tfm)
{
 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct chcr_ahash_req_ctx));
 return chcr_device_init(crypto_tfm_ctx(tfm));
}
