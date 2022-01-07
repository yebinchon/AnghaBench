
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct n2_cipher_tmpl {char* name; char* drv_name; int ablkcipher; int enc_type; int block_size; } ;
struct n2_cipher_context {int dummy; } ;
struct TYPE_2__ {int ablkcipher; } ;
struct crypto_alg {int cra_flags; int cra_ctxsize; int cra_name; int cra_module; int cra_init; TYPE_1__ cra_u; int * cra_type; int cra_blocksize; int cra_priority; int cra_driver_name; } ;
struct n2_cipher_alg {int entry; int enc_type; struct crypto_alg alg; } ;


 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_ALG_TYPE_ABLKCIPHER ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int N2_CRA_PRIORITY ;
 int THIS_MODULE ;
 int cipher_algs ;
 int crypto_ablkcipher_type ;
 int crypto_register_alg (struct crypto_alg*) ;
 int kfree (struct n2_cipher_alg*) ;
 struct n2_cipher_alg* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int n2_cipher_cra_init ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int __n2_register_one_cipher(const struct n2_cipher_tmpl *tmpl)
{
 struct n2_cipher_alg *p = kzalloc(sizeof(*p), GFP_KERNEL);
 struct crypto_alg *alg;
 int err;

 if (!p)
  return -ENOMEM;

 alg = &p->alg;

 snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", tmpl->name);
 snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-n2", tmpl->drv_name);
 alg->cra_priority = N2_CRA_PRIORITY;
 alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
    CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
 alg->cra_blocksize = tmpl->block_size;
 p->enc_type = tmpl->enc_type;
 alg->cra_ctxsize = sizeof(struct n2_cipher_context);
 alg->cra_type = &crypto_ablkcipher_type;
 alg->cra_u.ablkcipher = tmpl->ablkcipher;
 alg->cra_init = n2_cipher_cra_init;
 alg->cra_module = THIS_MODULE;

 list_add(&p->entry, &cipher_algs);
 err = crypto_register_alg(alg);
 if (err) {
  pr_err("%s alg registration failed\n", alg->cra_name);
  list_del(&p->entry);
  kfree(p);
 } else {
  pr_info("%s alg registered\n", alg->cra_name);
 }
 return err;
}
