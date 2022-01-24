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
struct TYPE_2__ {int /*<<< orphan*/ * timings; scalar_t__ of_node; int /*<<< orphan*/ * funcs; } ;
struct tfp410 {int hpd_irq; scalar_t__ hpd; int /*<<< orphan*/  ddc; TYPE_1__ bridge; int /*<<< orphan*/  hpd_work; int /*<<< orphan*/  powerdown; struct device* dev; int /*<<< orphan*/  timings; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct tfp410*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tfp410* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct tfp410*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tfp410_bridge_funcs ; 
 int FUNC13 (struct tfp410*) ; 
 int /*<<< orphan*/  tfp410_hpd_irq_thread ; 
 int /*<<< orphan*/  tfp410_hpd_work_func ; 
 int FUNC14 (struct tfp410*,int) ; 

__attribute__((used)) static int FUNC15(struct device *dev, bool i2c)
{
	struct tfp410 *dvi;
	int ret;

	if (!dev->of_node) {
		FUNC4(dev, "device-tree data is missing\n");
		return -ENXIO;
	}

	dvi = FUNC7(dev, sizeof(*dvi), GFP_KERNEL);
	if (!dvi)
		return -ENOMEM;
	FUNC5(dev, dvi);

	dvi->bridge.funcs = &tfp410_bridge_funcs;
	dvi->bridge.of_node = dev->of_node;
	dvi->bridge.timings = &dvi->timings;
	dvi->dev = dev;

	ret = FUNC14(dvi, i2c);
	if (ret)
		goto fail;

	ret = FUNC13(dvi);
	if (ret)
		goto fail;

	dvi->powerdown = FUNC6(dev, "powerdown",
						 GPIOD_OUT_HIGH);
	if (FUNC2(dvi->powerdown)) {
		FUNC4(dev, "failed to parse powerdown gpio\n");
		return FUNC3(dvi->powerdown);
	}

	if (dvi->hpd)
		dvi->hpd_irq = FUNC11(dvi->hpd);
	else
		dvi->hpd_irq = -ENXIO;

	if (dvi->hpd_irq >= 0) {
		FUNC1(&dvi->hpd_work, tfp410_hpd_work_func);

		ret = FUNC8(dev, dvi->hpd_irq,
			NULL, tfp410_hpd_irq_thread, IRQF_TRIGGER_RISING |
			IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
			"hdmi-hpd", dvi);
		if (ret) {
			FUNC0("failed to register hpd interrupt\n");
			goto fail;
		}
	}

	FUNC9(&dvi->bridge);

	return 0;
fail:
	FUNC12(dvi->ddc);
	if (dvi->hpd)
		FUNC10(dvi->hpd);
	return ret;
}