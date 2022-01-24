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
struct apds9960_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  reg_enable_als; int /*<<< orphan*/  reg_int_als; int /*<<< orphan*/  reg_enable_pxs; int /*<<< orphan*/  reg_int_pxs; int /*<<< orphan*/  reg_enable_ges; int /*<<< orphan*/  reg_int_ges; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS9960_DEFAULT_GEXTH ; 
 int /*<<< orphan*/  APDS9960_DEFAULT_GPENTH ; 
 int /*<<< orphan*/  APDS9960_DEFAULT_PERS ; 
 int /*<<< orphan*/  APDS9960_REG_GCONF_1 ; 
 int /*<<< orphan*/  APDS9960_REG_GCONF_1_GFIFO_THRES_MASK ; 
 int APDS9960_REG_GCONF_1_GFIFO_THRES_MASK_SHIFT ; 
 int /*<<< orphan*/  APDS9960_REG_GEXTH ; 
 int /*<<< orphan*/  APDS9960_REG_GPENTH ; 
 int /*<<< orphan*/  APDS9960_REG_PERS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct apds9960_data*,int) ; 
 int FUNC2 (struct apds9960_data*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct apds9960_data *data)
{
	int ret;

	/* Default IT for ALS of 28 ms */
	ret = FUNC1(data, 28000);
	if (ret)
		return ret;

	/* Ensure gesture interrupt is OFF */
	ret = FUNC3(data->reg_int_ges, 0);
	if (ret)
		return ret;

	/* Disable gesture sensor, since polling is useless from user-space */
	ret = FUNC3(data->reg_enable_ges, 0);
	if (ret)
		return ret;

	/* Ensure proximity interrupt is OFF */
	ret = FUNC3(data->reg_int_pxs, 0);
	if (ret)
		return ret;

	/* Enable proximity sensor for polling */
	ret = FUNC3(data->reg_enable_pxs, 1);
	if (ret)
		return ret;

	/* Ensure ALS interrupt is OFF */
	ret = FUNC3(data->reg_int_als, 0);
	if (ret)
		return ret;

	/* Enable ALS sensor for polling */
	ret = FUNC3(data->reg_enable_als, 1);
	if (ret)
		return ret;
	/*
	 * When enabled trigger an interrupt after 3 readings
	 * outside threshold for ALS + PXS
	 */
	ret = FUNC5(data->regmap, APDS9960_REG_PERS,
			   APDS9960_DEFAULT_PERS);
	if (ret)
		return ret;

	/*
	 * Wait for 4 event outside gesture threshold to prevent interrupt
	 * flooding.
	 */
	ret = FUNC4(data->regmap, APDS9960_REG_GCONF_1,
			APDS9960_REG_GCONF_1_GFIFO_THRES_MASK,
			FUNC0(0) << APDS9960_REG_GCONF_1_GFIFO_THRES_MASK_SHIFT);
	if (ret)
		return ret;

	/* Default ENTER and EXIT thresholds for the GESTURE engine. */
	ret = FUNC5(data->regmap, APDS9960_REG_GPENTH,
			   APDS9960_DEFAULT_GPENTH);
	if (ret)
		return ret;

	ret = FUNC5(data->regmap, APDS9960_REG_GEXTH,
			   APDS9960_DEFAULT_GEXTH);
	if (ret)
		return ret;

	return FUNC2(data, 1);
}