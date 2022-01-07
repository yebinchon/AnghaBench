
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct aead_ctx {int dummy; } ;


 int crypto_aead_set_reqsize (struct crypto_aead*,int) ;
 int crypto_aead_tfm (struct crypto_aead*) ;
 int init_tfm (int ) ;

__attribute__((used)) static int init_tfm_aead(struct crypto_aead *tfm)
{
 crypto_aead_set_reqsize(tfm, sizeof(struct aead_ctx));
 return init_tfm(crypto_aead_tfm(tfm));
}
