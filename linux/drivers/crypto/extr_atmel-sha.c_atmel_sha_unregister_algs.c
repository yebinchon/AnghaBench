
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_sha_384_512; scalar_t__ has_sha224; scalar_t__ has_hmac; } ;
struct atmel_sha_dev {TYPE_1__ caps; } ;


 int ARRAY_SIZE (int *) ;
 int crypto_unregister_ahash (int *) ;
 int * sha_1_256_algs ;
 int sha_224_alg ;
 int * sha_384_512_algs ;
 int * sha_hmac_algs ;

__attribute__((used)) static void atmel_sha_unregister_algs(struct atmel_sha_dev *dd)
{
 int i;

 if (dd->caps.has_hmac)
  for (i = 0; i < ARRAY_SIZE(sha_hmac_algs); i++)
   crypto_unregister_ahash(&sha_hmac_algs[i]);

 for (i = 0; i < ARRAY_SIZE(sha_1_256_algs); i++)
  crypto_unregister_ahash(&sha_1_256_algs[i]);

 if (dd->caps.has_sha224)
  crypto_unregister_ahash(&sha_224_alg);

 if (dd->caps.has_sha_384_512) {
  for (i = 0; i < ARRAY_SIZE(sha_384_512_algs); i++)
   crypto_unregister_ahash(&sha_384_512_algs[i]);
 }
}
