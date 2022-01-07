
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qat_dh_ctx {int g2; struct qat_crypto_instance* inst; scalar_t__ p_size; } ;
struct qat_crypto_instance {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 int EINVAL ;
 int get_current_node () ;
 struct qat_dh_ctx* kpp_tfm_ctx (struct crypto_kpp*) ;
 struct qat_crypto_instance* qat_crypto_get_instance_node (int ) ;

__attribute__((used)) static int qat_dh_init_tfm(struct crypto_kpp *tfm)
{
 struct qat_dh_ctx *ctx = kpp_tfm_ctx(tfm);
 struct qat_crypto_instance *inst =
   qat_crypto_get_instance_node(get_current_node());

 if (!inst)
  return -EINVAL;

 ctx->p_size = 0;
 ctx->g2 = 0;
 ctx->inst = inst;
 return 0;
}
