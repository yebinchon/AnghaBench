
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cesa_skcipher_req {int dummy; } ;
struct mv_cesa_ctx {int * ops; } ;
struct crypto_tfm {int dummy; } ;


 int __crypto_skcipher_cast (struct crypto_tfm*) ;
 int crypto_skcipher_set_reqsize (int ,int) ;
 struct mv_cesa_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int mv_cesa_skcipher_req_ops ;

__attribute__((used)) static int mv_cesa_skcipher_cra_init(struct crypto_tfm *tfm)
{
 struct mv_cesa_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->ops = &mv_cesa_skcipher_req_ops;

 crypto_skcipher_set_reqsize(__crypto_skcipher_cast(tfm),
        sizeof(struct mv_cesa_skcipher_req));

 return 0;
}
