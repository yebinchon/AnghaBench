
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_ctx {int * fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_shash (int *) ;
 struct s5p_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void s5p_hash_cra_exit(struct crypto_tfm *tfm)
{
 struct s5p_hash_ctx *tctx = crypto_tfm_ctx(tfm);

 crypto_free_shash(tctx->fallback);
 tctx->fallback = ((void*)0);
}
