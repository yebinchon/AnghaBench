#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hifn_device {char* name; int /*<<< orphan*/  alg_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  ablkcipher; } ;
struct TYPE_4__ {int cra_priority; int cra_flags; int cra_ctxsize; int /*<<< orphan*/  cra_init; TYPE_1__ cra_u; int /*<<< orphan*/  cra_module; int /*<<< orphan*/ * cra_type; scalar_t__ cra_alignmask; int /*<<< orphan*/  cra_blocksize; int /*<<< orphan*/  cra_driver_name; int /*<<< orphan*/  cra_name; } ;
struct hifn_crypto_alg {int /*<<< orphan*/  entry; TYPE_2__ alg; struct hifn_device* dev; } ;
struct hifn_context {int dummy; } ;
struct hifn_alg_template {char* name; char* drv_name; int /*<<< orphan*/  ablkcipher; int /*<<< orphan*/  bsize; } ;

/* Variables and functions */
 int CRYPTO_ALG_ASYNC ; 
 int CRYPTO_ALG_KERN_DRIVER_ONLY ; 
 int CRYPTO_ALG_TYPE_ABLKCIPHER ; 
 int /*<<< orphan*/  CRYPTO_MAX_ALG_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  crypto_ablkcipher_type ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  hifn_cra_init ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_crypto_alg*) ; 
 struct hifn_crypto_alg* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct hifn_device *dev, struct hifn_alg_template *t)
{
	struct hifn_crypto_alg *alg;
	int err;

	alg = FUNC2(sizeof(*alg), GFP_KERNEL);
	if (!alg)
		return -ENOMEM;

	FUNC5(alg->alg.cra_name, CRYPTO_MAX_ALG_NAME, "%s", t->name);
	FUNC5(alg->alg.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s-%s",
		 t->drv_name, dev->name);

	alg->alg.cra_priority = 300;
	alg->alg.cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER |
				CRYPTO_ALG_KERN_DRIVER_ONLY | CRYPTO_ALG_ASYNC;
	alg->alg.cra_blocksize = t->bsize;
	alg->alg.cra_ctxsize = sizeof(struct hifn_context);
	alg->alg.cra_alignmask = 0;
	alg->alg.cra_type = &crypto_ablkcipher_type;
	alg->alg.cra_module = THIS_MODULE;
	alg->alg.cra_u.ablkcipher = t->ablkcipher;
	alg->alg.cra_init = hifn_cra_init;

	alg->dev = dev;

	FUNC3(&alg->entry, &dev->alg_list);

	err = FUNC0(&alg->alg);
	if (err) {
		FUNC4(&alg->entry);
		FUNC1(alg);
	}

	return err;
}