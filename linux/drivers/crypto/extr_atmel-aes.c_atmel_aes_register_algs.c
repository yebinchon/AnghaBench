
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_authenc; scalar_t__ has_xts; scalar_t__ has_gcm; scalar_t__ has_cfb64; } ;
struct atmel_aes_dev {TYPE_1__ caps; } ;


 int ARRAY_SIZE (int *) ;
 int * aes_algs ;
 int * aes_authenc_algs ;
 int aes_cfb64_alg ;
 int aes_gcm_alg ;
 int aes_xts_alg ;
 int crypto_register_aead (int *) ;
 int crypto_register_alg (int *) ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_alg (int *) ;

__attribute__((used)) static int atmel_aes_register_algs(struct atmel_aes_dev *dd)
{
 int err, i, j;

 for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
  err = crypto_register_alg(&aes_algs[i]);
  if (err)
   goto err_aes_algs;
 }

 if (dd->caps.has_cfb64) {
  err = crypto_register_alg(&aes_cfb64_alg);
  if (err)
   goto err_aes_cfb64_alg;
 }

 if (dd->caps.has_gcm) {
  err = crypto_register_aead(&aes_gcm_alg);
  if (err)
   goto err_aes_gcm_alg;
 }

 if (dd->caps.has_xts) {
  err = crypto_register_alg(&aes_xts_alg);
  if (err)
   goto err_aes_xts_alg;
 }
 return 0;
err_aes_xts_alg:
 crypto_unregister_aead(&aes_gcm_alg);
err_aes_gcm_alg:
 crypto_unregister_alg(&aes_cfb64_alg);
err_aes_cfb64_alg:
 i = ARRAY_SIZE(aes_algs);
err_aes_algs:
 for (j = 0; j < i; j++)
  crypto_unregister_alg(&aes_algs[j]);

 return err;
}
