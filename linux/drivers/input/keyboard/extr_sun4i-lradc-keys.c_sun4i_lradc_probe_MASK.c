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
struct sun4i_lradc_data {int chan0_map_count; TYPE_3__* input; int /*<<< orphan*/  base; TYPE_2__* chan0_map; struct device* dev; int /*<<< orphan*/  vref_supply; int /*<<< orphan*/  variant; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct TYPE_6__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_8__ {char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_1__ id; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 TYPE_3__* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 struct sun4i_lradc_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sun4i_lradc_data*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct sun4i_lradc_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sun4i_lradc_close ; 
 int /*<<< orphan*/  sun4i_lradc_irq ; 
 int FUNC14 (struct device*,struct sun4i_lradc_data*) ; 
 int /*<<< orphan*/  sun4i_lradc_open ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct sun4i_lradc_data *lradc;
	struct device *dev = &pdev->dev;
	int i;
	int error;

	lradc = FUNC6(dev, sizeof(struct sun4i_lradc_data), GFP_KERNEL);
	if (!lradc)
		return -ENOMEM;

	error = FUNC14(dev, lradc);
	if (error)
		return error;

	lradc->variant = FUNC11(&pdev->dev);
	if (!lradc->variant) {
		FUNC3(&pdev->dev, "Missing sun4i-a10-lradc-keys variant\n");
		return -EINVAL;
	}

	lradc->vref_supply = FUNC7(dev, "vref");
	if (FUNC0(lradc->vref_supply))
		return FUNC1(lradc->vref_supply);

	lradc->dev = dev;
	lradc->input = FUNC4(dev);
	if (!lradc->input)
		return -ENOMEM;

	lradc->input->name = pdev->name;
	lradc->input->phys = "sun4i_lradc/input0";
	lradc->input->open = sun4i_lradc_open;
	lradc->input->close = sun4i_lradc_close;
	lradc->input->id.bustype = BUS_HOST;
	lradc->input->id.vendor = 0x0001;
	lradc->input->id.product = 0x0001;
	lradc->input->id.version = 0x0100;

	FUNC2(EV_KEY, lradc->input->evbit);
	for (i = 0; i < lradc->chan0_map_count; i++)
		FUNC2(lradc->chan0_map[i].keycode, lradc->input->keybit);

	FUNC10(lradc->input, lradc);

	lradc->base = FUNC5(dev,
			      FUNC13(pdev, IORESOURCE_MEM, 0));
	if (FUNC0(lradc->base))
		return FUNC1(lradc->base);

	error = FUNC8(dev, FUNC12(pdev, 0),
				 sun4i_lradc_irq, 0,
				 "sun4i-a10-lradc-keys", lradc);
	if (error)
		return error;

	error = FUNC9(lradc->input);
	if (error)
		return error;

	return 0;
}