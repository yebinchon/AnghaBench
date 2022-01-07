
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int img_hash_cra_init (struct crypto_tfm*,char*) ;

__attribute__((used)) static int img_hash_cra_sha256_init(struct crypto_tfm *tfm)
{
 return img_hash_cra_init(tfm, "sha256-generic");
}
