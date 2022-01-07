
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_cesa_dev {TYPE_1__* caps; } ;
struct TYPE_2__ {int nahash_algs; int ncipher_algs; int * cipher_algs; int * ahash_algs; } ;


 int crypto_unregister_ahash (int ) ;
 int crypto_unregister_skcipher (int ) ;

__attribute__((used)) static void mv_cesa_remove_algs(struct mv_cesa_dev *cesa)
{
 int i;

 for (i = 0; i < cesa->caps->nahash_algs; i++)
  crypto_unregister_ahash(cesa->caps->ahash_algs[i]);

 for (i = 0; i < cesa->caps->ncipher_algs; i++)
  crypto_unregister_skcipher(cesa->caps->cipher_algs[i]);
}
