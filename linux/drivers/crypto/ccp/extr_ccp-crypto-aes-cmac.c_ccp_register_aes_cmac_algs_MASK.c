#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct list_head {int dummy; } ;
struct crypto_alg {int cra_flags; int cra_ctxsize; int /*<<< orphan*/  cra_name; int /*<<< orphan*/  cra_module; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_priority; void* cra_blocksize; int /*<<< orphan*/  cra_driver_name; } ;
struct hash_alg_common {int statesize; struct crypto_alg base; void* digestsize; } ;
struct ccp_ctx {int dummy; } ;
struct ahash_alg {struct hash_alg_common halg; int /*<<< orphan*/  setkey; int /*<<< orphan*/  import; int /*<<< orphan*/  export; int /*<<< orphan*/  digest; int /*<<< orphan*/  finup; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  init; } ;
struct ccp_crypto_ahash_alg {int /*<<< orphan*/  entry; struct ahash_alg alg; int /*<<< orphan*/  mode; } ;
struct ccp_aes_cmac_exp_ctx {int dummy; } ;

/* Variables and functions */
 void* AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  CCP_AES_MODE_CMAC ; 
 int /*<<< orphan*/  CCP_CRA_PRIORITY ; 
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_KERN_DRIVER_ONLY ; 
 int CRYPTO_ALG_NEED_FALLBACK ; 
 int /*<<< orphan*/  CRYPTO_MAX_ALG_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  ccp_aes_cmac_cra_init ; 
 int /*<<< orphan*/  ccp_aes_cmac_digest ; 
 int /*<<< orphan*/  ccp_aes_cmac_export ; 
 int /*<<< orphan*/  ccp_aes_cmac_final ; 
 int /*<<< orphan*/  ccp_aes_cmac_finup ; 
 int /*<<< orphan*/  ccp_aes_cmac_import ; 
 int /*<<< orphan*/  ccp_aes_cmac_init ; 
 int /*<<< orphan*/  ccp_aes_cmac_setkey ; 
 int /*<<< orphan*/  ccp_aes_cmac_update ; 
 int FUNC1 (struct ahash_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccp_crypto_ahash_alg*) ; 
 struct ccp_crypto_ahash_alg* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct list_head *head)
{
	struct ccp_crypto_ahash_alg *ccp_alg;
	struct ahash_alg *alg;
	struct hash_alg_common *halg;
	struct crypto_alg *base;
	int ret;

	ccp_alg = FUNC3(sizeof(*ccp_alg), GFP_KERNEL);
	if (!ccp_alg)
		return -ENOMEM;

	FUNC0(&ccp_alg->entry);
	ccp_alg->mode = CCP_AES_MODE_CMAC;

	alg = &ccp_alg->alg;
	alg->init = ccp_aes_cmac_init;
	alg->update = ccp_aes_cmac_update;
	alg->final = ccp_aes_cmac_final;
	alg->finup = ccp_aes_cmac_finup;
	alg->digest = ccp_aes_cmac_digest;
	alg->export = ccp_aes_cmac_export;
	alg->import = ccp_aes_cmac_import;
	alg->setkey = ccp_aes_cmac_setkey;

	halg = &alg->halg;
	halg->digestsize = AES_BLOCK_SIZE;
	halg->statesize = sizeof(struct ccp_aes_cmac_exp_ctx);

	base = &halg->base;
	FUNC6(base->cra_name, CRYPTO_MAX_ALG_NAME, "cmac(aes)");
	FUNC6(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "cmac-aes-ccp");
	base->cra_flags = CRYPTO_ALG_ASYNC |
			  CRYPTO_ALG_KERN_DRIVER_ONLY |
			  CRYPTO_ALG_NEED_FALLBACK;
	base->cra_blocksize = AES_BLOCK_SIZE;
	base->cra_ctxsize = sizeof(struct ccp_ctx);
	base->cra_priority = CCP_CRA_PRIORITY;
	base->cra_init = ccp_aes_cmac_cra_init;
	base->cra_module = THIS_MODULE;

	ret = FUNC1(alg);
	if (ret) {
		FUNC5("%s ahash algorithm registration error (%d)\n",
		       base->cra_name, ret);
		FUNC2(ccp_alg);
		return ret;
	}

	FUNC4(&ccp_alg->entry, head);

	return 0;
}