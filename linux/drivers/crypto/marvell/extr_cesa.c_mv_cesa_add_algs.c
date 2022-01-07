
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_dev {TYPE_1__* caps; } ;
struct TYPE_2__ {int ncipher_algs; int nahash_algs; int * cipher_algs; int * ahash_algs; } ;


 int crypto_register_ahash (int ) ;
 int crypto_register_skcipher (int ) ;
 int crypto_unregister_ahash (int ) ;
 int crypto_unregister_skcipher (int ) ;

__attribute__((used)) static int mv_cesa_add_algs(struct mv_cesa_dev *cesa)
{
 int ret;
 int i, j;

 for (i = 0; i < cesa->caps->ncipher_algs; i++) {
  ret = crypto_register_skcipher(cesa->caps->cipher_algs[i]);
  if (ret)
   goto err_unregister_crypto;
 }

 for (i = 0; i < cesa->caps->nahash_algs; i++) {
  ret = crypto_register_ahash(cesa->caps->ahash_algs[i]);
  if (ret)
   goto err_unregister_ahash;
 }

 return 0;

err_unregister_ahash:
 for (j = 0; j < i; j++)
  crypto_unregister_ahash(cesa->caps->ahash_algs[j]);
 i = cesa->caps->ncipher_algs;

err_unregister_crypto:
 for (j = 0; j < i; j++)
  crypto_unregister_skcipher(cesa->caps->cipher_algs[j]);

 return ret;
}
