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
struct hdmi_context {scalar_t__ irq; int /*<<< orphan*/  reg_hdmi_en; TYPE_1__* regul_bulk; int /*<<< orphan*/  hpd_gpio; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hdmi_context*) ; 
 int FUNC10 (struct hdmi_context*) ; 
 int FUNC11 (struct hdmi_context*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * supply ; 

__attribute__((used)) static int FUNC13(struct hdmi_context *hdata)
{
	struct device *dev = hdata->dev;
	int i, ret;

	FUNC1(dev, "HDMI resource init\n");

	hdata->hpd_gpio = FUNC5(dev, "hpd", GPIOD_IN);
	if (FUNC3(hdata->hpd_gpio)) {
		FUNC2(dev, "cannot get hpd gpio property\n");
		return FUNC4(hdata->hpd_gpio);
	}

	hdata->irq = FUNC8(hdata->hpd_gpio);
	if (hdata->irq < 0) {
		FUNC2(dev, "failed to get GPIO irq\n");
		return  hdata->irq;
	}

	ret = FUNC10(hdata);
	if (ret)
		return ret;

	ret = FUNC11(hdata, false);
	if (ret)
		return ret;

	for (i = 0; i < FUNC0(supply); ++i)
		hdata->regul_bulk[i].supply = supply[i];

	ret = FUNC6(dev, FUNC0(supply), hdata->regul_bulk);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "failed to get regulators\n");
		return ret;
	}

	hdata->reg_hdmi_en = FUNC7(dev, "hdmi-en");

	if (FUNC4(hdata->reg_hdmi_en) != -ENODEV) {
		if (FUNC3(hdata->reg_hdmi_en))
			return FUNC4(hdata->reg_hdmi_en);

		ret = FUNC12(hdata->reg_hdmi_en);
		if (ret) {
			FUNC2(dev,
				      "failed to enable hdmi-en regulator\n");
			return ret;
		}
	}

	return FUNC9(hdata);
}