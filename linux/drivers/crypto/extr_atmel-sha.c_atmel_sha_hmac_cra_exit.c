
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct atmel_sha_hmac_ctx {int hkey; } ;


 int atmel_sha_hmac_key_release (int *) ;
 struct atmel_sha_hmac_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void atmel_sha_hmac_cra_exit(struct crypto_tfm *tfm)
{
 struct atmel_sha_hmac_ctx *hmac = crypto_tfm_ctx(tfm);

 atmel_sha_hmac_key_release(&hmac->hkey);
}
