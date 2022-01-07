
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int mtk_sha_cra_init_alg (struct crypto_tfm*,char*) ;

__attribute__((used)) static int mtk_sha_cra_sha512_init(struct crypto_tfm *tfm)
{
 return mtk_sha_cra_init_alg(tfm, "sha512");
}
