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
struct scaler_data {int num_clk; int /*<<< orphan*/ * clk_name; } ;
struct scaler_context {int /*<<< orphan*/ * clock; struct scaler_data* scaler_data; int /*<<< orphan*/  regs; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCALER_AUTOSUSPEND_DELAY ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct scaler_context* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct scaler_context*) ; 
 scalar_t__ FUNC8 (struct device*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct scaler_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  scaler_component_ops ; 
 int /*<<< orphan*/  scaler_irq_handler ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource	*regs_res;
	struct scaler_context *scaler;
	int irq;
	int ret, i;

	scaler = FUNC6(dev, sizeof(*scaler), GFP_KERNEL);
	if (!scaler)
		return -ENOMEM;

	scaler->scaler_data =
		(struct scaler_data *)FUNC8(dev);

	scaler->dev = dev;
	regs_res = FUNC10(pdev, IORESOURCE_MEM, 0);
	scaler->regs = FUNC5(dev, regs_res);
	if (FUNC0(scaler->regs))
		return FUNC1(scaler->regs);

	irq = FUNC9(pdev, 0);
	if (irq < 0) {
		FUNC3(dev, "failed to get irq\n");
		return irq;
	}

	ret = FUNC7(dev, irq, NULL,	scaler_irq_handler,
					IRQF_ONESHOT, "drm_scaler", scaler);
	if (ret < 0) {
		FUNC3(dev, "failed to request irq\n");
		return ret;
	}

	for (i = 0; i < scaler->scaler_data->num_clk; ++i) {
		scaler->clock[i] = FUNC4(dev,
					      scaler->scaler_data->clk_name[i]);
		if (FUNC0(scaler->clock[i])) {
			FUNC3(dev, "failed to get clock\n");
			return FUNC1(scaler->clock[i]);
		}
	}

	FUNC16(dev);
	FUNC15(dev, SCALER_AUTOSUSPEND_DELAY);
	FUNC14(dev);
	FUNC11(pdev, scaler);

	ret = FUNC2(dev, &scaler_component_ops);
	if (ret)
		goto err_ippdrv_register;

	return 0;

err_ippdrv_register:
	FUNC13(dev);
	FUNC12(dev);
	return ret;
}