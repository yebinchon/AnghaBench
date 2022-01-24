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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mtk_cryp {scalar_t__* irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  clk_cryp; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MTK_IRQ_NUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct mtk_cryp* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mtk_cryp*) ; 
 int FUNC9 (struct mtk_cryp*) ; 
 int /*<<< orphan*/  FUNC10 (struct mtk_cryp*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_cryp*) ; 
 int FUNC12 (struct mtk_cryp*) ; 
 int /*<<< orphan*/  FUNC13 (struct mtk_cryp*) ; 
 int FUNC14 (struct mtk_cryp*) ; 
 scalar_t__ FUNC15 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct mtk_cryp*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct mtk_cryp *cryp;
	int i, err;

	cryp = FUNC6(&pdev->dev, sizeof(*cryp), GFP_KERNEL);
	if (!cryp)
		return -ENOMEM;

	cryp->base = FUNC7(pdev, 0);
	if (FUNC0(cryp->base))
		return FUNC1(cryp->base);

	for (i = 0; i < MTK_IRQ_NUM; i++) {
		cryp->irq[i] = FUNC15(pdev, i);
		if (cryp->irq[i] < 0)
			return cryp->irq[i];
	}

	cryp->clk_cryp = FUNC5(&pdev->dev, "cryp");
	if (FUNC0(cryp->clk_cryp))
		return -EPROBE_DEFER;

	cryp->dev = &pdev->dev;
	FUNC18(cryp->dev);
	FUNC19(cryp->dev);

	err = FUNC3(cryp->clk_cryp);
	if (err)
		goto err_clk_cryp;

	/* Allocate four command/result descriptor rings */
	err = FUNC12(cryp);
	if (err) {
		FUNC4(cryp->dev, "Unable to allocate descriptor rings.\n");
		goto err_resource;
	}

	/* Initialize hardware modules */
	err = FUNC8(cryp);
	if (err) {
		FUNC4(cryp->dev, "Failed to initialize cryptographic engine.\n");
		goto err_engine;
	}

	err = FUNC9(cryp);
	if (err) {
		FUNC4(cryp->dev, "Unable to register cipher algorithm.\n");
		goto err_cipher;
	}

	err = FUNC14(cryp);
	if (err) {
		FUNC4(cryp->dev, "Unable to register hash algorithm.\n");
		goto err_hash;
	}

	FUNC16(pdev, cryp);
	return 0;

err_hash:
	FUNC10(cryp);
err_cipher:
	FUNC13(cryp);
err_engine:
	FUNC11(cryp);
err_resource:
	FUNC2(cryp->clk_cryp);
err_clk_cryp:
	FUNC20(cryp->dev);
	FUNC17(cryp->dev);

	return err;
}