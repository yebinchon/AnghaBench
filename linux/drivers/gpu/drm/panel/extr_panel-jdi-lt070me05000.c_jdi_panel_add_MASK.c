#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct device* dev; int /*<<< orphan*/ * funcs; } ;
struct jdi_panel {TYPE_1__ base; TYPE_2__* dsi; void* backlight; void* dcdc_en_gpio; void* reset_gpio; void* enable_gpio; TYPE_4__* supplies; int /*<<< orphan*/ * mode; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  supply; } ;
struct TYPE_7__ {struct device dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  default_mode ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,unsigned int,TYPE_4__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  jdi_panel_funcs ; 
 int /*<<< orphan*/ * regulator_names ; 

__attribute__((used)) static int FUNC9(struct jdi_panel *jdi)
{
	struct device *dev = &jdi->dsi->dev;
	int ret;
	unsigned int i;

	jdi->mode = &default_mode;

	for (i = 0; i < FUNC0(jdi->supplies); i++)
		jdi->supplies[i].supply = regulator_names[i];

	ret = FUNC5(dev, FUNC0(jdi->supplies),
				      jdi->supplies);
	if (ret < 0) {
		FUNC3(dev, "failed to init regulator, ret=%d\n", ret);
		return ret;
	}

	jdi->enable_gpio = FUNC4(dev, "enable", GPIOD_OUT_LOW);
	if (FUNC1(jdi->enable_gpio)) {
		ret = FUNC2(jdi->enable_gpio);
		FUNC3(dev, "cannot get enable-gpio %d\n", ret);
		return ret;
	}

	jdi->reset_gpio = FUNC4(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(jdi->reset_gpio)) {
		ret = FUNC2(jdi->reset_gpio);
		FUNC3(dev, "cannot get reset-gpios %d\n", ret);
		return ret;
	}

	jdi->dcdc_en_gpio = FUNC4(dev, "dcdc-en", GPIOD_OUT_LOW);
	if (FUNC1(jdi->dcdc_en_gpio)) {
		ret = FUNC2(jdi->dcdc_en_gpio);
		FUNC3(dev, "cannot get dcdc-en-gpio %d\n", ret);
		return ret;
	}

	jdi->backlight = FUNC7(jdi->dsi);
	if (FUNC1(jdi->backlight)) {
		ret = FUNC2(jdi->backlight);
		FUNC3(dev, "failed to register backlight %d\n", ret);
		return ret;
	}

	FUNC8(&jdi->base);
	jdi->base.funcs = &jdi_panel_funcs;
	jdi->base.dev = &jdi->dsi->dev;

	ret = FUNC6(&jdi->base);

	return ret;
}