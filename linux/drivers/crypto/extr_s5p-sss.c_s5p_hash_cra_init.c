
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int s5p_hash_cra_init_alg (struct crypto_tfm*) ;

__attribute__((used)) static int s5p_hash_cra_init(struct crypto_tfm *tfm)
{
 return s5p_hash_cra_init_alg(tfm);
}
