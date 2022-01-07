
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int omap_sham_cra_init_alg (struct crypto_tfm*,char*) ;

__attribute__((used)) static int omap_sham_cra_sha384_init(struct crypto_tfm *tfm)
{
 return omap_sham_cra_init_alg(tfm, "sha384");
}
