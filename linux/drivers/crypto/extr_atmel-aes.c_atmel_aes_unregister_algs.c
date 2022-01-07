
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_cfb64; scalar_t__ has_gcm; scalar_t__ has_xts; scalar_t__ has_authenc; } ;
struct atmel_aes_dev {TYPE_1__ caps; } ;


 int ARRAY_SIZE (int *) ;
 int * aes_algs ;
 int * aes_authenc_algs ;
 int aes_cfb64_alg ;
 int aes_gcm_alg ;
 int aes_xts_alg ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_alg (int *) ;

__attribute__((used)) static void atmel_aes_unregister_algs(struct atmel_aes_dev *dd)
{
 int i;







 if (dd->caps.has_xts)
  crypto_unregister_alg(&aes_xts_alg);

 if (dd->caps.has_gcm)
  crypto_unregister_aead(&aes_gcm_alg);

 if (dd->caps.has_cfb64)
  crypto_unregister_alg(&aes_cfb64_alg);

 for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
  crypto_unregister_alg(&aes_algs[i]);
}
