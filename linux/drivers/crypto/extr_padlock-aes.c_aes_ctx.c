
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct aes_ctx {int dummy; } ;


 struct aes_ctx* aes_ctx_common (int ) ;
 int crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static inline struct aes_ctx *aes_ctx(struct crypto_tfm *tfm)
{
 return aes_ctx_common(crypto_tfm_ctx(tfm));
}
