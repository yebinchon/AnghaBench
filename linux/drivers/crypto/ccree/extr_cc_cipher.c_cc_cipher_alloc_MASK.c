#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct cc_drvdata {scalar_t__ hw_rev; int std_bodies; scalar_t__ sec_disabled; struct cc_cipher_handle* cipher_handle; } ;
struct TYPE_6__ {int cra_driver_name; } ;
struct TYPE_8__ {TYPE_1__ base; } ;
struct cc_crypto_alg {TYPE_3__ skcipher_alg; int /*<<< orphan*/  entry; struct cc_drvdata* drvdata; } ;
struct cc_cipher_handle {int /*<<< orphan*/  alg_list; } ;
struct TYPE_7__ {scalar_t__ min_hw_rev; int std_body; int driver_name; scalar_t__ sec_func; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct cc_crypto_alg*) ; 
 int FUNC3 (struct cc_crypto_alg*) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_drvdata*) ; 
 struct cc_crypto_alg* FUNC5 (TYPE_2__*,struct device*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 struct device* FUNC9 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_crypto_alg*) ; 
 struct cc_cipher_handle* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* skcipher_algs ; 

int FUNC13(struct cc_drvdata *drvdata)
{
	struct cc_cipher_handle *cipher_handle;
	struct cc_crypto_alg *t_alg;
	struct device *dev = FUNC9(drvdata);
	int rc = -ENOMEM;
	int alg;

	cipher_handle = FUNC11(sizeof(*cipher_handle), GFP_KERNEL);
	if (!cipher_handle)
		return -ENOMEM;

	FUNC1(&cipher_handle->alg_list);
	drvdata->cipher_handle = cipher_handle;

	/* Linux crypto */
	FUNC7(dev, "Number of algorithms = %zu\n",
		FUNC0(skcipher_algs));
	for (alg = 0; alg < FUNC0(skcipher_algs); alg++) {
		if ((skcipher_algs[alg].min_hw_rev > drvdata->hw_rev) ||
		    !(drvdata->std_bodies & skcipher_algs[alg].std_body) ||
		    (drvdata->sec_disabled && skcipher_algs[alg].sec_func))
			continue;

		FUNC7(dev, "creating %s\n", skcipher_algs[alg].driver_name);
		t_alg = FUNC5(&skcipher_algs[alg], dev);
		if (FUNC2(t_alg)) {
			rc = FUNC3(t_alg);
			FUNC8(dev, "%s alg allocation failed\n",
				skcipher_algs[alg].driver_name);
			goto fail0;
		}
		t_alg->drvdata = drvdata;

		FUNC7(dev, "registering %s\n",
			skcipher_algs[alg].driver_name);
		rc = FUNC6(&t_alg->skcipher_alg);
		FUNC7(dev, "%s alg registration rc = %x\n",
			t_alg->skcipher_alg.base.cra_driver_name, rc);
		if (rc) {
			FUNC8(dev, "%s alg registration failed\n",
				t_alg->skcipher_alg.base.cra_driver_name);
			FUNC10(t_alg);
			goto fail0;
		} else {
			FUNC12(&t_alg->entry,
				      &cipher_handle->alg_list);
			FUNC7(dev, "Registered %s\n",
				t_alg->skcipher_alg.base.cra_driver_name);
		}
	}
	return 0;

fail0:
	FUNC4(drvdata);
	return rc;
}