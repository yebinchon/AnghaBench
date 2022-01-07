
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * aes_algs ;
 int aes_gcm_alg ;
 int crypto_unregister_aead (int *) ;
 int crypto_unregister_alg (int *) ;

__attribute__((used)) static void mtk_aes_unregister_algs(void)
{
 int i;

 crypto_unregister_aead(&aes_gcm_alg);

 for (i = 0; i < ARRAY_SIZE(aes_algs); i++)
  crypto_unregister_alg(&aes_algs[i]);
}
