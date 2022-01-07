
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int stm32_hash_cra_init_algs (struct crypto_tfm*,char*) ;

__attribute__((used)) static int stm32_hash_cra_sha224_init(struct crypto_tfm *tfm)
{
 return stm32_hash_cra_init_algs(tfm, "sha224");
}
