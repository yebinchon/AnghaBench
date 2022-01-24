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
struct crypto_alg {int /*<<< orphan*/  cra_name; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_driver_name; } ;
struct hash_alg_common {struct crypto_alg base; } ;
struct ccp_sha_def {char* name; char* drv_name; } ;
struct ahash_alg {struct hash_alg_common halg; int /*<<< orphan*/  setkey; } ;
struct ccp_crypto_ahash_alg {int /*<<< orphan*/  entry; struct ahash_alg alg; int /*<<< orphan*/  child_alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MAX_ALG_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccp_hmac_sha_cra_exit ; 
 int /*<<< orphan*/  ccp_hmac_sha_cra_init ; 
 int /*<<< orphan*/  ccp_sha_setkey ; 
 int FUNC1 (struct ahash_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccp_crypto_ahash_alg*) ; 
 struct ccp_crypto_ahash_alg* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct list_head *head,
				 const struct ccp_sha_def *def,
				 const struct ccp_crypto_ahash_alg *base_alg)
{
	struct ccp_crypto_ahash_alg *ccp_alg;
	struct ahash_alg *alg;
	struct hash_alg_common *halg;
	struct crypto_alg *base;
	int ret;

	ccp_alg = FUNC3(sizeof(*ccp_alg), GFP_KERNEL);
	if (!ccp_alg)
		return -ENOMEM;

	/* Copy the base algorithm and only change what's necessary */
	*ccp_alg = *base_alg;
	FUNC0(&ccp_alg->entry);

	FUNC7(ccp_alg->child_alg, def->name, CRYPTO_MAX_ALG_NAME);

	alg = &ccp_alg->alg;
	alg->setkey = ccp_sha_setkey;

	halg = &alg->halg;

	base = &halg->base;
	FUNC6(base->cra_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)", def->name);
	FUNC6(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "hmac-%s",
		 def->drv_name);
	base->cra_init = ccp_hmac_sha_cra_init;
	base->cra_exit = ccp_hmac_sha_cra_exit;

	ret = FUNC1(alg);
	if (ret) {
		FUNC5("%s ahash algorithm registration error (%d)\n",
		       base->cra_name, ret);
		FUNC2(ccp_alg);
		return ret;
	}

	FUNC4(&ccp_alg->entry, head);

	return ret;
}