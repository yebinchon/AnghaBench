
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ablkcipher {int dummy; } ;
struct chcr_context {int dummy; } ;


 struct chcr_context* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;

__attribute__((used)) static inline struct chcr_context *c_ctx(struct crypto_ablkcipher *tfm)
{
 return crypto_ablkcipher_ctx(tfm);
}
