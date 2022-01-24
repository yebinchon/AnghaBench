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
typedef  int /*<<< orphan*/  u32 ;
struct mcp3911 {int dev_addr; TYPE_1__* spi; scalar_t__ clki; scalar_t__ vref; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MCP3911_CONFIG_CLKEXT ; 
 int /*<<< orphan*/  MCP3911_CONFIG_VREFEXT ; 
 int /*<<< orphan*/  MCP3911_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct mcp3911*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct mcp3911*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC5(struct mcp3911 *adc, struct device_node *of_node)
{
	u32 configreg;
	int ret;

	FUNC4(of_node, "device-addr", &adc->dev_addr);
	if (adc->dev_addr > 3) {
		FUNC1(&adc->spi->dev,
			"invalid device address (%i). Must be in range 0-3.\n",
			adc->dev_addr);
		return -EINVAL;
	}
	FUNC0(&adc->spi->dev, "use device address %i\n", adc->dev_addr);

	ret = FUNC2(adc, MCP3911_REG_CONFIG, &configreg, 2);
	if (ret)
		return ret;

	if (adc->vref) {
		FUNC0(&adc->spi->dev, "use external voltage reference\n");
		configreg |= MCP3911_CONFIG_VREFEXT;
	} else {
		FUNC0(&adc->spi->dev,
			"use internal voltage reference (1.2V)\n");
		configreg &= ~MCP3911_CONFIG_VREFEXT;
	}

	if (adc->clki) {
		FUNC0(&adc->spi->dev, "use external clock as clocksource\n");
		configreg |= MCP3911_CONFIG_CLKEXT;
	} else {
		FUNC0(&adc->spi->dev,
			"use crystal oscillator as clocksource\n");
		configreg &= ~MCP3911_CONFIG_CLKEXT;
	}

	return  FUNC3(adc, MCP3911_REG_CONFIG, configreg, 2);
}