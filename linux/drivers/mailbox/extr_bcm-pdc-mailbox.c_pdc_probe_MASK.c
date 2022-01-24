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
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pdc_state {int /*<<< orphan*/  ring_pool; int /*<<< orphan*/  rx_buf_pool; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  pdc_reg_vbase; int /*<<< orphan*/  pdc_idx; struct platform_device* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_spu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PDC_RING_SIZE ; 
 int PDC_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RING_ALIGN ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct pdc_state* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,struct pdc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct pdc_state*) ; 
 int FUNC13 (struct pdc_state*) ; 
 int FUNC14 (struct pdc_state*) ; 
 int FUNC15 (struct pdc_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct pdc_state*) ; 
 int /*<<< orphan*/  pdc_tasklet_cb ; 
 TYPE_1__ pdcg ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct pdc_state*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	int err = 0;
	struct device *dev = &pdev->dev;
	struct resource *pdc_regs;
	struct pdc_state *pdcs;

	/* PDC state for one SPU */
	pdcs = FUNC7(dev, sizeof(*pdcs), GFP_KERNEL);
	if (!pdcs) {
		err = -ENOMEM;
		goto cleanup;
	}

	pdcs->pdev = pdev;
	FUNC18(pdev, pdcs);
	pdcs->pdc_idx = pdcg.num_spu;
	pdcg.num_spu++;

	err = FUNC10(dev, FUNC0(39));
	if (err) {
		FUNC5(dev, "PDC device cannot perform DMA. Error %d.", err);
		goto cleanup;
	}

	/* Create DMA pool for tx ring */
	pdcs->ring_pool = FUNC8("pdc rings", dev, PDC_RING_SIZE,
					  RING_ALIGN, 0);
	if (!pdcs->ring_pool) {
		err = -ENOMEM;
		goto cleanup;
	}

	err = FUNC11(pdev, pdcs);
	if (err)
		goto cleanup_ring_pool;

	pdc_regs = FUNC17(pdev, IORESOURCE_MEM, 0);
	if (!pdc_regs) {
		err = -ENODEV;
		goto cleanup_ring_pool;
	}
	FUNC3(dev, "PDC register region res.start = %pa, res.end = %pa",
		&pdc_regs->start, &pdc_regs->end);

	pdcs->pdc_reg_vbase = FUNC6(&pdev->dev, pdc_regs);
	if (FUNC1(pdcs->pdc_reg_vbase)) {
		err = FUNC2(pdcs->pdc_reg_vbase);
		FUNC4(&pdev->dev, "Failed to map registers: %d\n", err);
		goto cleanup_ring_pool;
	}

	/* create rx buffer pool after dt read to know how big buffers are */
	err = FUNC15(pdcs);
	if (err)
		goto cleanup_ring_pool;

	FUNC12(pdcs);

	/* Init tasklet for deferred DMA rx processing */
	FUNC19(&pdcs->rx_tasklet, pdc_tasklet_cb, (unsigned long)pdcs);

	err = FUNC13(pdcs);
	if (err)
		goto cleanup_buf_pool;

	/* Initialize mailbox controller */
	err = FUNC14(pdcs);
	if (err)
		goto cleanup_buf_pool;

	FUNC16(pdcs);

	FUNC3(dev, "pdc_probe() successful");
	return PDC_SUCCESS;

cleanup_buf_pool:
	FUNC20(&pdcs->rx_tasklet);
	FUNC9(pdcs->rx_buf_pool);

cleanup_ring_pool:
	FUNC9(pdcs->ring_pool);

cleanup:
	return err;
}