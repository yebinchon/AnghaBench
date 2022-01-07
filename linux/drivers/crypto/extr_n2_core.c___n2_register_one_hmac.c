
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct n2_hmac_ctx {int dummy; } ;
struct crypto_alg {int cra_ctxsize; int cra_name; int cra_exit; int cra_init; int cra_driver_name; } ;
struct TYPE_9__ {struct crypto_alg base; } ;
struct ahash_alg {TYPE_4__ halg; int setkey; int digest; } ;
struct TYPE_10__ {int entry; struct ahash_alg alg; } ;
struct n2_hmac_alg {char* child_alg; TYPE_5__ derived; } ;
struct TYPE_6__ {char* cra_name; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct TYPE_8__ {TYPE_2__ halg; } ;
struct n2_ahash_alg {TYPE_3__ alg; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int hmac_algs ;
 int kfree (struct n2_hmac_alg*) ;
 struct n2_hmac_alg* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int memcpy (TYPE_5__*,struct n2_ahash_alg*,int) ;
 int n2_hmac_async_digest ;
 int n2_hmac_async_setkey ;
 int n2_hmac_cra_exit ;
 int n2_hmac_cra_init ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int __n2_register_one_hmac(struct n2_ahash_alg *n2ahash)
{
 struct n2_hmac_alg *p = kzalloc(sizeof(*p), GFP_KERNEL);
 struct ahash_alg *ahash;
 struct crypto_alg *base;
 int err;

 if (!p)
  return -ENOMEM;

 p->child_alg = n2ahash->alg.halg.base.cra_name;
 memcpy(&p->derived, n2ahash, sizeof(struct n2_ahash_alg));
 INIT_LIST_HEAD(&p->derived.entry);

 ahash = &p->derived.alg;
 ahash->digest = n2_hmac_async_digest;
 ahash->setkey = n2_hmac_async_setkey;

 base = &ahash->halg.base;
 snprintf(base->cra_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)", p->child_alg);
 snprintf(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "hmac-%s-n2", p->child_alg);

 base->cra_ctxsize = sizeof(struct n2_hmac_ctx);
 base->cra_init = n2_hmac_cra_init;
 base->cra_exit = n2_hmac_cra_exit;

 list_add(&p->derived.entry, &hmac_algs);
 err = crypto_register_ahash(ahash);
 if (err) {
  pr_err("%s alg registration failed\n", base->cra_name);
  list_del(&p->derived.entry);
  kfree(p);
 } else {
  pr_info("%s alg registered\n", base->cra_name);
 }
 return err;
}
