#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ivsize; } ;
struct crypto_alg {int /*<<< orphan*/  cra_name; TYPE_1__ cra_ablkcipher; int /*<<< orphan*/  cra_blocksize; int /*<<< orphan*/  cra_driver_name; } ;
struct ccp_des3_def {char* name; char* driver_name; int /*<<< orphan*/  ivsize; int /*<<< orphan*/  blocksize; struct crypto_alg* alg_defaults; int /*<<< orphan*/  mode; } ;
struct ccp_crypto_ablkcipher_alg {int /*<<< orphan*/  entry; struct crypto_alg alg; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MAX_ALG_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccp_crypto_ablkcipher_alg*) ; 
 struct ccp_crypto_ablkcipher_alg* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC7(struct list_head *head,
				 const struct ccp_des3_def *def)
{
	struct ccp_crypto_ablkcipher_alg *ccp_alg;
	struct crypto_alg *alg;
	int ret;

	ccp_alg = FUNC3(sizeof(*ccp_alg), GFP_KERNEL);
	if (!ccp_alg)
		return -ENOMEM;

	FUNC0(&ccp_alg->entry);

	ccp_alg->mode = def->mode;

	/* Copy the defaults and override as necessary */
	alg = &ccp_alg->alg;
	*alg = *def->alg_defaults;
	FUNC6(alg->cra_name, CRYPTO_MAX_ALG_NAME, "%s", def->name);
	FUNC6(alg->cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s",
			def->driver_name);
	alg->cra_blocksize = def->blocksize;
	alg->cra_ablkcipher.ivsize = def->ivsize;

	ret = FUNC1(alg);
	if (ret) {
		FUNC5("%s ablkcipher algorithm registration error (%d)\n",
				alg->cra_name, ret);
		FUNC2(ccp_alg);
		return ret;
	}

	FUNC4(&ccp_alg->entry, head);

	return 0;
}