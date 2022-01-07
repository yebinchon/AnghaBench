
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_dh_ctx {unsigned int p_size; } ;
struct crypto_kpp {int dummy; } ;


 struct qat_dh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;

__attribute__((used)) static unsigned int qat_dh_max_size(struct crypto_kpp *tfm)
{
 struct qat_dh_ctx *ctx = kpp_tfm_ctx(tfm);

 return ctx->p_size;
}
