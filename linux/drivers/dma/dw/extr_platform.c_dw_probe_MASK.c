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
struct device {int dummy; } ;
struct platform_device {struct device dev; int /*<<< orphan*/  id; } ;
struct dw_dma_chip_pdata {int (* probe ) (struct dw_dma_chip*) ;struct dw_dma_chip* chip; scalar_t__ pdata; } ;
struct dw_dma_chip {scalar_t__ irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  dw; struct device* dev; scalar_t__ pdata; int /*<<< orphan*/  id; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 struct dw_dma_chip_pdata* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 struct dw_dma_chip_pdata* FUNC8 (struct device*,struct dw_dma_chip_pdata const*,int,int /*<<< orphan*/ ) ; 
 struct dw_dma_chip* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct platform_device*) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct dw_dma_chip_pdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int FUNC19 (struct dw_dma_chip*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	const struct dw_dma_chip_pdata *match;
	struct dw_dma_chip_pdata *data;
	struct dw_dma_chip *chip;
	struct device *dev = &pdev->dev;
	int err;

	match = FUNC6(dev);
	if (!match)
		return -ENODEV;

	data = FUNC8(&pdev->dev, match, sizeof(*match), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	chip = FUNC9(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->irq = FUNC15(pdev, 0);
	if (chip->irq < 0)
		return chip->irq;

	chip->regs = FUNC10(pdev, 0);
	if (FUNC1(chip->regs))
		return FUNC2(chip->regs);

	err = FUNC11(&pdev->dev, FUNC0(32));
	if (err)
		return err;

	if (!data->pdata)
		data->pdata = FUNC5(dev);
	if (!data->pdata)
		data->pdata = FUNC14(pdev);

	chip->dev = dev;
	chip->id = pdev->id;
	chip->pdata = data->pdata;

	data->chip = chip;

	chip->clk = FUNC7(chip->dev, "hclk");
	if (FUNC1(chip->clk))
		return FUNC2(chip->clk);
	err = FUNC4(chip->clk);
	if (err)
		return err;

	FUNC18(&pdev->dev);

	err = data->probe(chip);
	if (err)
		goto err_dw_dma_probe;

	FUNC16(pdev, data);

	FUNC13(chip->dw);

	FUNC12(chip->dw);

	return 0;

err_dw_dma_probe:
	FUNC17(&pdev->dev);
	FUNC3(chip->clk);
	return err;
}