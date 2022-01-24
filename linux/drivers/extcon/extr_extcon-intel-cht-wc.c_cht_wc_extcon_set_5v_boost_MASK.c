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
struct cht_wc_extcon_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHT_WC_VBUS_GPIO_CTLO ; 
 int CHT_WC_VBUS_GPIO_CTLO_DIR_OUT ; 
 int CHT_WC_VBUS_GPIO_CTLO_DRV_OD ; 
 int CHT_WC_VBUS_GPIO_CTLO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cht_wc_extcon_data *ext,
				       bool enable)
{
	int ret, val;

	/*
	 * The 5V boost converter is enabled through a gpio on the PMIC, since
	 * there currently is no gpio driver we access the gpio reg directly.
	 */
	val = CHT_WC_VBUS_GPIO_CTLO_DRV_OD | CHT_WC_VBUS_GPIO_CTLO_DIR_OUT;
	if (enable)
		val |= CHT_WC_VBUS_GPIO_CTLO_OUTPUT;

	ret = FUNC1(ext->regmap, CHT_WC_VBUS_GPIO_CTLO, val);
	if (ret)
		FUNC0(ext->dev, "Error writing Vbus GPIO CTLO: %d\n", ret);
}