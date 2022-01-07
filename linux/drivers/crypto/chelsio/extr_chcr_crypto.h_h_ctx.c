
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int dummy; } ;
struct chcr_context {int dummy; } ;


 int crypto_ahash_tfm (struct crypto_ahash*) ;
 struct chcr_context* crypto_tfm_ctx (int ) ;

__attribute__((used)) static inline struct chcr_context *h_ctx(struct crypto_ahash *tfm)
{
 return crypto_tfm_ctx(crypto_ahash_tfm(tfm));
}
