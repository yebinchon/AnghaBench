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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_gpio_platform_data {void* scl_is_output_only; void* scl_is_open_drain; void* sda_is_open_drain; int /*<<< orphan*/  timeout; int /*<<< orphan*/  udelay; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct device_node *np,
				  struct i2c_gpio_platform_data *pdata)
{
	u32 reg;

	FUNC2(np, "i2c-gpio,delay-us", &pdata->udelay);

	if (!FUNC2(np, "i2c-gpio,timeout-ms", &reg))
		pdata->timeout = FUNC0(reg);

	pdata->sda_is_open_drain =
		FUNC1(np, "i2c-gpio,sda-open-drain");
	pdata->scl_is_open_drain =
		FUNC1(np, "i2c-gpio,scl-open-drain");
	pdata->scl_is_output_only =
		FUNC1(np, "i2c-gpio,scl-output-only");
}