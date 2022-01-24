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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct lpc32xx_kscan_drv {int matrix_sz; int row_shift; int deb_clks; int scan_delay; struct input_dev* input; int /*<<< orphan*/  clk; int /*<<< orphan*/  kscan_base; void* keymap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int vendor; int product; int version; } ;
struct input_dev {char* phys; TYPE_2__ dev; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LPC32XX_KSCAN_FTST_USE32K_CLK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC13 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpc32xx_kscan_drv*) ; 
 int FUNC15 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,struct lpc32xx_kscan_drv*) ; 
 int /*<<< orphan*/  lpc32xx_kscan_close ; 
 int /*<<< orphan*/  lpc32xx_kscan_irq ; 
 int /*<<< orphan*/  lpc32xx_kscan_open ; 
 int FUNC18 (int /*<<< orphan*/ *,struct lpc32xx_kscan_drv*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,void*,struct input_dev*) ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct lpc32xx_kscan_drv*) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct lpc32xx_kscan_drv *kscandat;
	struct input_dev *input;
	struct resource *res;
	size_t keymap_size;
	int error;
	int irq;

	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC9(&pdev->dev, "failed to get platform I/O memory\n");
		return -EINVAL;
	}

	irq = FUNC20(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	kscandat = FUNC13(&pdev->dev, sizeof(*kscandat),
				GFP_KERNEL);
	if (!kscandat)
		return -ENOMEM;

	error = FUNC18(&pdev->dev, kscandat);
	if (error) {
		FUNC9(&pdev->dev, "failed to parse device tree\n");
		return error;
	}

	keymap_size = sizeof(kscandat->keymap[0]) *
				(kscandat->matrix_sz << kscandat->row_shift);
	kscandat->keymap = FUNC13(&pdev->dev, keymap_size, GFP_KERNEL);
	if (!kscandat->keymap)
		return -ENOMEM;

	kscandat->input = input = FUNC11(&pdev->dev);
	if (!input) {
		FUNC9(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	/* Setup key input */
	input->name		= pdev->name;
	input->phys		= "lpc32xx/input0";
	input->id.vendor	= 0x0001;
	input->id.product	= 0x0001;
	input->id.version	= 0x0100;
	input->open		= lpc32xx_kscan_open;
	input->close		= lpc32xx_kscan_close;
	input->dev.parent	= &pdev->dev;

	FUNC16(input, EV_MSC, MSC_SCAN);

	error = FUNC19(NULL, NULL,
					   kscandat->matrix_sz,
					   kscandat->matrix_sz,
					   kscandat->keymap, kscandat->input);
	if (error) {
		FUNC9(&pdev->dev, "failed to build keymap\n");
		return error;
	}

	FUNC17(kscandat->input, kscandat);

	kscandat->kscan_base = FUNC12(&pdev->dev, res);
	if (FUNC0(kscandat->kscan_base))
		return FUNC6(kscandat->kscan_base);

	/* Get the key scanner clock */
	kscandat->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC0(kscandat->clk)) {
		FUNC9(&pdev->dev, "failed to get clock\n");
		return FUNC6(kscandat->clk);
	}

	/* Configure the key scanner */
	error = FUNC8(kscandat->clk);
	if (error)
		return error;

	FUNC23(kscandat->deb_clks, FUNC1(kscandat->kscan_base));
	FUNC23(kscandat->scan_delay, FUNC5(kscandat->kscan_base));
	FUNC23(LPC32XX_KSCAN_FTST_USE32K_CLK,
	       FUNC2(kscandat->kscan_base));
	FUNC23(kscandat->matrix_sz,
	       FUNC4(kscandat->kscan_base));
	FUNC23(1, FUNC3(kscandat->kscan_base));
	FUNC7(kscandat->clk);

	error = FUNC14(&pdev->dev, irq, lpc32xx_kscan_irq, 0,
				 pdev->name, kscandat);
	if (error) {
		FUNC9(&pdev->dev, "failed to request irq\n");
		return error;
	}

	error = FUNC15(kscandat->input);
	if (error) {
		FUNC9(&pdev->dev, "failed to register input device\n");
		return error;
	}

	FUNC22(pdev, kscandat);

	return 0;
}