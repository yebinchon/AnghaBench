
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * aes_algs ;
 int aes_gcm_alg ;
 int crypto_register_aead (int *) ;
 int crypto_register_alg (int *) ;
 int crypto_unregister_alg (int *) ;

__attribute__((used)) static int mtk_aes_register_algs(void)
{
 int err, i;

 for (i = 0; i < ARRAY_SIZE(aes_algs); i++) {
  err = crypto_register_alg(&aes_algs[i]);
  if (err)
   goto err_aes_algs;
 }

 err = crypto_register_aead(&aes_gcm_alg);
 if (err)
  goto err_aes_algs;

 return 0;

err_aes_algs:
 for (; i--; )
  crypto_unregister_alg(&aes_algs[i]);

 return err;
}
