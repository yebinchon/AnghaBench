
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct chcr_context {int dummy; } ;


 struct chcr_context* crypto_aead_ctx (struct crypto_aead*) ;

__attribute__((used)) static inline struct chcr_context *a_ctx(struct crypto_aead *tfm)
{
 return crypto_aead_ctx(tfm);
}
