
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct crypto_alg {int cra_flags; char* cra_driver_name; int cra_init; int cra_ctxsize; int * cra_exit; int cra_alignmask; void* cra_module; void* cra_priority; } ;
struct chcr_context {int dummy; } ;
struct TYPE_9__ {struct crypto_alg base; int statesize; } ;
struct ahash_alg {TYPE_2__ halg; int init; int setkey; int import; int export; int digest; int finup; int final; int update; } ;
struct ablk_ctx {int dummy; } ;
struct TYPE_8__ {int cra_flags; char* cra_driver_name; void* cra_module; } ;
struct TYPE_13__ {TYPE_1__ base; int exit; int init; int decrypt; int encrypt; } ;
struct TYPE_12__ {int cra_flags; int cra_ctxsize; char* cra_driver_name; int * cra_type; int cra_alignmask; void* cra_module; void* cra_priority; } ;
struct TYPE_10__ {struct ahash_alg hash; TYPE_6__ aead; TYPE_5__ crypto; } ;
struct TYPE_11__ {int is_registered; int type; TYPE_3__ alg; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 void* CHCR_CRA_PRIORITY ;
 int const CRYPTO_ALG_ASYNC ;
 int const CRYPTO_ALG_NEED_FALLBACK ;



 int CRYPTO_ALG_TYPE_HMAC ;
 int CRYPTO_ALG_TYPE_MASK ;
 int SZ_AHASH_CTX ;
 int SZ_AHASH_H_CTX ;
 int SZ_AHASH_REQ_CTX ;
 void* THIS_MODULE ;
 int chcr_aead_cra_exit ;
 int chcr_aead_cra_init ;
 int chcr_aead_decrypt ;
 int chcr_aead_encrypt ;
 int chcr_ahash_digest ;
 int chcr_ahash_export ;
 int chcr_ahash_final ;
 int chcr_ahash_finup ;
 int chcr_ahash_import ;
 int chcr_ahash_setkey ;
 int chcr_ahash_update ;
 int * chcr_hmac_cra_exit ;
 int chcr_hmac_cra_init ;
 int chcr_hmac_init ;
 int chcr_sha_cra_init ;
 int chcr_sha_init ;
 int chcr_unregister_alg () ;
 int crypto_ablkcipher_type ;
 int crypto_register_aead (TYPE_6__*) ;
 int crypto_register_ahash (struct ahash_alg*) ;
 int crypto_register_alg (TYPE_5__*) ;
 TYPE_4__* driver_algs ;
 int pr_err (char*,char*) ;

__attribute__((used)) static int chcr_register_alg(void)
{
 struct crypto_alg ai;
 struct ahash_alg *a_hash;
 int err = 0, i;
 char *name = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {
  if (driver_algs[i].is_registered)
   continue;
  switch (driver_algs[i].type & CRYPTO_ALG_TYPE_MASK) {
  case 130:
   driver_algs[i].alg.crypto.cra_priority =
    CHCR_CRA_PRIORITY;
   driver_algs[i].alg.crypto.cra_module = THIS_MODULE;
   driver_algs[i].alg.crypto.cra_flags =
    130 | CRYPTO_ALG_ASYNC |
    CRYPTO_ALG_NEED_FALLBACK;
   driver_algs[i].alg.crypto.cra_ctxsize =
    sizeof(struct chcr_context) +
    sizeof(struct ablk_ctx);
   driver_algs[i].alg.crypto.cra_alignmask = 0;
   driver_algs[i].alg.crypto.cra_type =
    &crypto_ablkcipher_type;
   err = crypto_register_alg(&driver_algs[i].alg.crypto);
   name = driver_algs[i].alg.crypto.cra_driver_name;
   break;
  case 129:
   driver_algs[i].alg.aead.base.cra_flags =
    CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK;
   driver_algs[i].alg.aead.encrypt = chcr_aead_encrypt;
   driver_algs[i].alg.aead.decrypt = chcr_aead_decrypt;
   driver_algs[i].alg.aead.init = chcr_aead_cra_init;
   driver_algs[i].alg.aead.exit = chcr_aead_cra_exit;
   driver_algs[i].alg.aead.base.cra_module = THIS_MODULE;
   err = crypto_register_aead(&driver_algs[i].alg.aead);
   name = driver_algs[i].alg.aead.base.cra_driver_name;
   break;
  case 128:
   a_hash = &driver_algs[i].alg.hash;
   a_hash->update = chcr_ahash_update;
   a_hash->final = chcr_ahash_final;
   a_hash->finup = chcr_ahash_finup;
   a_hash->digest = chcr_ahash_digest;
   a_hash->export = chcr_ahash_export;
   a_hash->import = chcr_ahash_import;
   a_hash->halg.statesize = SZ_AHASH_REQ_CTX;
   a_hash->halg.base.cra_priority = CHCR_CRA_PRIORITY;
   a_hash->halg.base.cra_module = THIS_MODULE;
   a_hash->halg.base.cra_flags = CRYPTO_ALG_ASYNC;
   a_hash->halg.base.cra_alignmask = 0;
   a_hash->halg.base.cra_exit = ((void*)0);

   if (driver_algs[i].type == CRYPTO_ALG_TYPE_HMAC) {
    a_hash->halg.base.cra_init = chcr_hmac_cra_init;
    a_hash->halg.base.cra_exit = chcr_hmac_cra_exit;
    a_hash->init = chcr_hmac_init;
    a_hash->setkey = chcr_ahash_setkey;
    a_hash->halg.base.cra_ctxsize = SZ_AHASH_H_CTX;
   } else {
    a_hash->init = chcr_sha_init;
    a_hash->halg.base.cra_ctxsize = SZ_AHASH_CTX;
    a_hash->halg.base.cra_init = chcr_sha_cra_init;
   }
   err = crypto_register_ahash(&driver_algs[i].alg.hash);
   ai = driver_algs[i].alg.hash.halg.base;
   name = ai.cra_driver_name;
   break;
  }
  if (err) {
   pr_err("chcr : %s : Algorithm registration failed\n",
          name);
   goto register_err;
  } else {
   driver_algs[i].is_registered = 1;
  }
 }
 return 0;

register_err:
 chcr_unregister_alg();
 return err;
}
