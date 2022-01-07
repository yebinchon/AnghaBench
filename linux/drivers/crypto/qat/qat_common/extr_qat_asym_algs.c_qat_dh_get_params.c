
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_dh_ctx {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 struct qat_dh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;

__attribute__((used)) static inline struct qat_dh_ctx *qat_dh_get_params(struct crypto_kpp *tfm)
{
 return kpp_tfm_ctx(tfm);
}
