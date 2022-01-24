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
struct hwrng {unsigned long priv; int /*<<< orphan*/  data_read; int /*<<< orphan*/  data_present; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;
struct crypto4xx_device {int /*<<< orphan*/ * trng_base; } ;
struct crypto4xx_core_device {struct hwrng* trng; int /*<<< orphan*/  device; struct crypto4xx_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int PPC4XX_TRNG_CTRL ; 
 int /*<<< orphan*/  PPC4XX_TRNG_CTRL_DALM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct hwrng*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hwrng*) ; 
 struct hwrng* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppc4xx_trng_data_present ; 
 int /*<<< orphan*/  ppc4xx_trng_data_read ; 
 int /*<<< orphan*/  FUNC10 (struct crypto4xx_device*,int) ; 
 int /*<<< orphan*/  ppc4xx_trng_match ; 

void FUNC11(struct crypto4xx_core_device *core_dev)
{
	struct crypto4xx_device *dev = core_dev->dev;
	struct device_node *trng = NULL;
	struct hwrng *rng = NULL;
	int err;

	/* Find the TRNG device node and map it */
	trng = FUNC6(NULL, ppc4xx_trng_match);
	if (!trng || !FUNC5(trng)) {
		FUNC8(trng);
		return;
	}

	dev->trng_base = FUNC7(trng, 0);
	FUNC8(trng);
	if (!dev->trng_base)
		goto err_out;

	rng = FUNC4(sizeof(*rng), GFP_KERNEL);
	if (!rng)
		goto err_out;

	rng->name = KBUILD_MODNAME;
	rng->data_present = ppc4xx_trng_data_present;
	rng->data_read = ppc4xx_trng_data_read;
	rng->priv = (unsigned long) dev;
	core_dev->trng = rng;
	FUNC10(dev, true);
	FUNC9(dev->trng_base + PPC4XX_TRNG_CTRL, PPC4XX_TRNG_CTRL_DALM);
	err = FUNC1(core_dev->device, core_dev->trng);
	if (err) {
		FUNC10(dev, false);
		FUNC0(core_dev->device, "failed to register hwrng (%d).\n",
			err);
		goto err_out;
	}
	return;

err_out:
	FUNC2(dev->trng_base);
	FUNC3(rng);
	dev->trng_base = NULL;
	core_dev->trng = NULL;
}