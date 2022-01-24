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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct i2c_bus_recovery_info* bus_recovery_info; } ;
struct i2c_bus_recovery_info {int /*<<< orphan*/  recover_bus; int /*<<< orphan*/  unprepare_recovery; int /*<<< orphan*/  prepare_recovery; void* sda_gpiod; void* scl_gpiod; } ;
struct imx_i2c_struct {TYPE_1__ adapter; void* pinctrl_pins_gpio; void* pinctrl_pins_default; void* pinctrl; struct i2c_bus_recovery_info rinfo; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH_OPEN_DRAIN ; 
 scalar_t__ FUNC0 (void*) ; 
 char* PINCTRL_STATE_DEFAULT ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i2c_generic_scl_recovery ; 
 int /*<<< orphan*/  i2c_imx_prepare_recovery ; 
 int /*<<< orphan*/  i2c_imx_unprepare_recovery ; 
 void* FUNC6 (void*,char*) ; 

__attribute__((used)) static int FUNC7(struct imx_i2c_struct *i2c_imx,
		struct platform_device *pdev)
{
	struct i2c_bus_recovery_info *rinfo = &i2c_imx->rinfo;

	i2c_imx->pinctrl = FUNC5(&pdev->dev);
	if (!i2c_imx->pinctrl || FUNC0(i2c_imx->pinctrl)) {
		FUNC3(&pdev->dev, "can't get pinctrl, bus recovery not supported\n");
		return FUNC1(i2c_imx->pinctrl);
	}

	i2c_imx->pinctrl_pins_default = FUNC6(i2c_imx->pinctrl,
			PINCTRL_STATE_DEFAULT);
	i2c_imx->pinctrl_pins_gpio = FUNC6(i2c_imx->pinctrl,
			"gpio");
	rinfo->sda_gpiod = FUNC4(&pdev->dev, "sda", GPIOD_IN);
	rinfo->scl_gpiod = FUNC4(&pdev->dev, "scl", GPIOD_OUT_HIGH_OPEN_DRAIN);

	if (FUNC1(rinfo->sda_gpiod) == -EPROBE_DEFER ||
	    FUNC1(rinfo->scl_gpiod) == -EPROBE_DEFER) {
		return -EPROBE_DEFER;
	} else if (FUNC0(rinfo->sda_gpiod) ||
		   FUNC0(rinfo->scl_gpiod) ||
		   FUNC0(i2c_imx->pinctrl_pins_default) ||
		   FUNC0(i2c_imx->pinctrl_pins_gpio)) {
		FUNC2(&pdev->dev, "recovery information incomplete\n");
		return 0;
	}

	FUNC2(&pdev->dev, "using scl%s for recovery\n",
		rinfo->sda_gpiod ? ",sda" : "");

	rinfo->prepare_recovery = i2c_imx_prepare_recovery;
	rinfo->unprepare_recovery = i2c_imx_unprepare_recovery;
	rinfo->recover_bus = i2c_generic_scl_recovery;
	i2c_imx->adapter.bus_recovery_info = rinfo;

	return 0;
}