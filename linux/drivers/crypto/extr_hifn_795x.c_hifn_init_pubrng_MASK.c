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
struct hifn_device {int dmareg; int /*<<< orphan*/  rngtime; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int /*<<< orphan*/  HIFN_1_PUB_IEN ; 
 int /*<<< orphan*/  HIFN_1_PUB_RESET ; 
 int /*<<< orphan*/  HIFN_1_RNG_CONFIG ; 
 int /*<<< orphan*/  HIFN_1_RNG_DATA ; 
 int HIFN_DMAIER_PUBDONE ; 
 int HIFN_PUBIEN_DONE ; 
 int HIFN_PUBRST_RESET ; 
 int HIFN_RNGCFG_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct hifn_device *dev)
{
	int i;

	FUNC3(dev, HIFN_1_PUB_RESET, FUNC2(dev, HIFN_1_PUB_RESET) |
			HIFN_PUBRST_RESET);

	for (i = 100; i > 0; --i) {
		FUNC5(1);

		if ((FUNC2(dev, HIFN_1_PUB_RESET) & HIFN_PUBRST_RESET) == 0)
			break;
	}

	if (!i) {
		FUNC1(&dev->pdev->dev, "Failed to initialise public key engine.\n");
	} else {
		FUNC3(dev, HIFN_1_PUB_IEN, HIFN_PUBIEN_DONE);
		dev->dmareg |= HIFN_DMAIER_PUBDONE;
		FUNC3(dev, HIFN_1_DMA_IER, dev->dmareg);

		FUNC0(&dev->pdev->dev, "Public key engine has been successfully initialised.\n");
	}

	/* Enable RNG engine. */

	FUNC3(dev, HIFN_1_RNG_CONFIG,
			FUNC2(dev, HIFN_1_RNG_CONFIG) | HIFN_RNGCFG_ENA);
	FUNC0(&dev->pdev->dev, "RNG engine has been successfully initialised.\n");

#ifdef CONFIG_CRYPTO_DEV_HIFN_795X_RNG
	/* First value must be discarded */
	hifn_read_1(dev, HIFN_1_RNG_DATA);
	dev->rngtime = ktime_get();
#endif
	return 0;
}