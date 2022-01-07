
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_sha_reqctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 scalar_t__ SHA256_BLOCK_SIZE ;
 scalar_t__ SHA_BUFFER_LEN ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,scalar_t__) ;

__attribute__((used)) static int sahara_sha_cra_init(struct crypto_tfm *tfm)
{
 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct sahara_sha_reqctx) +
     SHA_BUFFER_LEN + SHA256_BLOCK_SIZE);

 return 0;
}
