#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sh_keysc_info {size_t mode; int scan_timing; int /*<<< orphan*/ * keycodes; } ;
struct sh_keysc_priv {int /*<<< orphan*/ * iomem_base; struct input_dev* input; struct sh_keysc_info pdata; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* phys; int keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  keycodemax; int /*<<< orphan*/ * keycode; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * evbit; } ;
struct TYPE_6__ {int kymd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  KYCR1 ; 
 int SH_KEYSC_MAXKEYS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct platform_device*) ; 
 struct input_dev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sh_keysc_priv*) ; 
 struct sh_keysc_priv* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sh_keysc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct sh_keysc_priv*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct resource*) ; 
 int /*<<< orphan*/  sh_keysc_isr ; 
 int /*<<< orphan*/  FUNC24 (struct sh_keysc_priv*,int /*<<< orphan*/ ) ; 
 TYPE_3__* sh_keysc_mode ; 
 int /*<<< orphan*/  FUNC25 (struct sh_keysc_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct sh_keysc_priv *priv;
	struct sh_keysc_info *pdata;
	struct resource *res;
	struct input_dev *input;
	int i;
	int irq, error;

	if (!FUNC5(&pdev->dev)) {
		FUNC4(&pdev->dev, "no platform data defined\n");
		error = -EINVAL;
		goto err0;
	}

	error = -ENXIO;
	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC4(&pdev->dev, "failed to get I/O memory\n");
		goto err0;
	}

	irq = FUNC17(pdev, 0);
	if (irq < 0)
		goto err0;

	priv = FUNC15(sizeof(*priv), GFP_KERNEL);
	if (priv == NULL) {
		FUNC4(&pdev->dev, "failed to allocate driver data\n");
		error = -ENOMEM;
		goto err0;
	}

	FUNC19(pdev, priv);
	FUNC16(&priv->pdata, FUNC5(&pdev->dev), sizeof(priv->pdata));
	pdata = &priv->pdata;

	priv->iomem_base = FUNC12(res->start, FUNC23(res));
	if (priv->iomem_base == NULL) {
		FUNC4(&pdev->dev, "failed to remap I/O memory\n");
		error = -ENXIO;
		goto err1;
	}

	priv->input = FUNC9();
	if (!priv->input) {
		FUNC4(&pdev->dev, "failed to allocate input device\n");
		error = -ENOMEM;
		goto err2;
	}

	input = priv->input;
	input->evbit[0] = FUNC1(EV_KEY);

	input->name = pdev->name;
	input->phys = "sh-keysc-keys/input0";
	input->dev.parent = &pdev->dev;

	input->id.bustype = BUS_HOST;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = 0x0100;

	input->keycode = pdata->keycodes;
	input->keycodesize = sizeof(pdata->keycodes[0]);
	input->keycodemax = FUNC0(pdata->keycodes);

	error = FUNC22(irq, NULL, sh_keysc_isr, IRQF_ONESHOT,
				     FUNC6(&pdev->dev), pdev);
	if (error) {
		FUNC4(&pdev->dev, "failed to request IRQ\n");
		goto err3;
	}

	for (i = 0; i < SH_KEYSC_MAXKEYS; i++)
		FUNC3(pdata->keycodes[i], input->keybit);
	FUNC2(KEY_RESERVED, input->keybit);

	error = FUNC11(input);
	if (error) {
		FUNC4(&pdev->dev, "failed to register input device\n");
		goto err4;
	}

	FUNC20(&pdev->dev);
	FUNC21(&pdev->dev);

	FUNC25(priv, KYCR1, (sh_keysc_mode[pdata->mode].kymd << 8) |
		       pdata->scan_timing);
	FUNC24(priv, 0);

	FUNC7(&pdev->dev, 1);

	return 0;

 err4:
	FUNC8(irq, pdev);
 err3:
	FUNC10(input);
 err2:
	FUNC13(priv->iomem_base);
 err1:
	FUNC14(priv);
 err0:
	return error;
}