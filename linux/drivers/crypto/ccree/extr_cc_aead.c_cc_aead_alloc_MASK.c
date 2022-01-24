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
struct cc_drvdata {scalar_t__ hw_rev; int std_bodies; struct cc_aead_handle* aead_handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct cc_crypto_alg {TYPE_2__ aead_alg; int /*<<< orphan*/  entry; struct cc_drvdata* drvdata; } ;
struct cc_aead_handle {scalar_t__ sram_workspace_addr; int /*<<< orphan*/  aead_list; } ;
struct TYPE_8__ {scalar_t__ min_hw_rev; int std_body; int /*<<< orphan*/  driver_name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct cc_crypto_alg*) ; 
 int /*<<< orphan*/  MAX_HMAC_DIGEST_SIZE ; 
 scalar_t__ NULL_SRAM_ADDR ; 
 int FUNC3 (struct cc_crypto_alg*) ; 
 TYPE_3__* aead_algs ; 
 int /*<<< orphan*/  FUNC4 (struct cc_drvdata*) ; 
 struct cc_crypto_alg* FUNC5 (TYPE_3__*,struct device*) ; 
 scalar_t__ FUNC6 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 struct device* FUNC10 (struct cc_drvdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_crypto_alg*) ; 
 struct cc_aead_handle* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC14(struct cc_drvdata *drvdata)
{
	struct cc_aead_handle *aead_handle;
	struct cc_crypto_alg *t_alg;
	int rc = -ENOMEM;
	int alg;
	struct device *dev = FUNC10(drvdata);

	aead_handle = FUNC12(sizeof(*aead_handle), GFP_KERNEL);
	if (!aead_handle) {
		rc = -ENOMEM;
		goto fail0;
	}

	FUNC1(&aead_handle->aead_list);
	drvdata->aead_handle = aead_handle;

	aead_handle->sram_workspace_addr = FUNC6(drvdata,
							 MAX_HMAC_DIGEST_SIZE);

	if (aead_handle->sram_workspace_addr == NULL_SRAM_ADDR) {
		FUNC9(dev, "SRAM pool exhausted\n");
		rc = -ENOMEM;
		goto fail1;
	}

	/* Linux crypto */
	for (alg = 0; alg < FUNC0(aead_algs); alg++) {
		if ((aead_algs[alg].min_hw_rev > drvdata->hw_rev) ||
		    !(drvdata->std_bodies & aead_algs[alg].std_body))
			continue;

		t_alg = FUNC5(&aead_algs[alg], dev);
		if (FUNC2(t_alg)) {
			rc = FUNC3(t_alg);
			FUNC9(dev, "%s alg allocation failed\n",
				aead_algs[alg].driver_name);
			goto fail1;
		}
		t_alg->drvdata = drvdata;
		rc = FUNC7(&t_alg->aead_alg);
		if (rc) {
			FUNC9(dev, "%s alg registration failed\n",
				t_alg->aead_alg.base.cra_driver_name);
			goto fail2;
		} else {
			FUNC13(&t_alg->entry, &aead_handle->aead_list);
			FUNC8(dev, "Registered %s\n",
				t_alg->aead_alg.base.cra_driver_name);
		}
	}

	return 0;

fail2:
	FUNC11(t_alg);
fail1:
	FUNC4(drvdata);
fail0:
	return rc;
}