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
struct omap_des_dev {int /*<<< orphan*/ * dma_lch_in; int /*<<< orphan*/ * dma_lch_out; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct omap_des_dev *dd)
{
	int err;

	dd->dma_lch_out = NULL;
	dd->dma_lch_in = NULL;

	dd->dma_lch_in = FUNC4(dd->dev, "rx");
	if (FUNC0(dd->dma_lch_in)) {
		FUNC2(dd->dev, "Unable to request in DMA channel\n");
		return FUNC1(dd->dma_lch_in);
	}

	dd->dma_lch_out = FUNC4(dd->dev, "tx");
	if (FUNC0(dd->dma_lch_out)) {
		FUNC2(dd->dev, "Unable to request out DMA channel\n");
		err = FUNC1(dd->dma_lch_out);
		goto err_dma_out;
	}

	return 0;

err_dma_out:
	FUNC3(dd->dma_lch_in);

	return err;
}