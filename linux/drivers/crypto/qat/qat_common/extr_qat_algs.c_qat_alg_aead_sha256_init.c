
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int ICP_QAT_HW_AUTH_ALGO_SHA256 ;
 int qat_alg_aead_init (struct crypto_aead*,int ,char*) ;

__attribute__((used)) static int qat_alg_aead_sha256_init(struct crypto_aead *tfm)
{
 return qat_alg_aead_init(tfm, ICP_QAT_HW_AUTH_ALGO_SHA256, "sha256");
}
