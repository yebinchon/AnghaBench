
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int min_keysize; int max_keysize; void* ivsize; int decrypt; int encrypt; int setkey; } ;
struct crypto_alg {int cra_flags; int cra_ctxsize; int cra_name; int cra_module; int cra_exit; int cra_init; TYPE_1__ cra_ablkcipher; int * cra_type; int cra_priority; void* cra_blocksize; int cra_driver_name; } ;
struct ccp_ctx {int dummy; } ;
struct ccp_crypto_ablkcipher_alg {int entry; struct crypto_alg alg; } ;
struct ccp_aes_xts_def {char* name; char* drv_name; } ;


 void* AES_BLOCK_SIZE ;
 int AES_MAX_KEY_SIZE ;
 int AES_MIN_KEY_SIZE ;
 int CCP_CRA_PRIORITY ;
 int CRYPTO_ALG_ASYNC ;
 int CRYPTO_ALG_KERN_DRIVER_ONLY ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 int CRYPTO_ALG_TYPE_ABLKCIPHER ;
 int CRYPTO_MAX_ALG_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int ccp_aes_xts_cra_exit ;
 int ccp_aes_xts_cra_init ;
 int ccp_aes_xts_decrypt ;
 int ccp_aes_xts_encrypt ;
 int ccp_aes_xts_setkey ;
 int crypto_ablkcipher_type ;
 int crypto_register_alg (struct crypto_alg*) ;
 int kfree (struct ccp_crypto_ablkcipher_alg*) ;
 struct ccp_crypto_ablkcipher_alg* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;
 int pr_err (char*,int ,int) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int ccp_register_aes_xts_alg(struct list_head *head,
        const struct ccp_aes_xts_def *def)
{
 struct ccp_crypto_ablkcipher_alg *ccp_alg;
 struct crypto_alg *alg;
 int ret;

 ccp_alg = kzalloc(sizeof(*ccp_alg), GFP_KERNEL);
 if (!ccp_alg)
  return -ENOMEM;

 INIT_LIST_HEAD(&ccp_alg->entry);

 alg = &ccp_alg->alg;

 snprintf(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
 snprintf(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
   def->drv_name);
 alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
    CRYPTO_ALG_KERN_DRIVER_ONLY |
    CRYPTO_ALG_NEED_FALLBACK;
 alg->cra_blocksize = AES_BLOCK_SIZE;
 alg->cra_ctxsize = sizeof(struct ccp_ctx);
 alg->cra_priority = CCP_CRA_PRIORITY;
 alg->cra_type = &crypto_ablkcipher_type;
 alg->cra_ablkcipher.setkey = ccp_aes_xts_setkey;
 alg->cra_ablkcipher.encrypt = ccp_aes_xts_encrypt;
 alg->cra_ablkcipher.decrypt = ccp_aes_xts_decrypt;
 alg->cra_ablkcipher.min_keysize = AES_MIN_KEY_SIZE * 2;
 alg->cra_ablkcipher.max_keysize = AES_MAX_KEY_SIZE * 2;
 alg->cra_ablkcipher.ivsize = AES_BLOCK_SIZE;
 alg->cra_init = ccp_aes_xts_cra_init;
 alg->cra_exit = ccp_aes_xts_cra_exit;
 alg->cra_module = THIS_MODULE;

 ret = crypto_register_alg(alg);
 if (ret) {
  pr_err("%s ablkcipher algorithm registration error (%d)\n",
         alg->cra_name, ret);
  kfree(ccp_alg);
  return ret;
 }

 list_add(&ccp_alg->entry, head);

 return 0;
}
