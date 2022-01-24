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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mlxreg_led_priv_data {int /*<<< orphan*/  access_lock; struct mlxreg_core_platform_data* pdata; } ;
struct mlxreg_led_data {struct mlxreg_core_data* data; struct mlxreg_led_priv_data* data_parent; } ;
struct mlxreg_core_platform_data {int /*<<< orphan*/  regmap; } ;
struct mlxreg_core_data {int mask; int /*<<< orphan*/  reg; scalar_t__ bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct mlxreg_led_data *led_data, u8 vset)
{
	struct mlxreg_led_priv_data *priv = led_data->data_parent;
	struct mlxreg_core_platform_data *led_pdata = priv->pdata;
	struct mlxreg_core_data *data = led_data->data;
	u32 regval;
	u32 nib;
	int ret;

	/*
	 * Each LED is controlled through low or high nibble of the relevant
	 * register byte. Register offset is specified by off parameter.
	 * Parameter vset provides color code: 0x0 for off, 0x5 for solid red,
	 * 0x6 for 3Hz blink red, 0xd for solid green, 0xe for 3Hz blink
	 * green.
	 * Parameter mask specifies which nibble is used for specific LED: mask
	 * 0xf0 - lower nibble is to be used (bits from 0 to 3), mask 0x0f -
	 * higher nibble (bits from 4 to 7).
	 */
	FUNC0(&priv->access_lock);

	ret = FUNC2(led_pdata->regmap, data->reg, &regval);
	if (ret)
		goto access_error;

	nib = (FUNC5(data->mask, data->bit) == 0xf0) ? FUNC4(vset, data->bit) :
	      FUNC4(vset, data->bit + 4);
	regval = (regval & data->mask) | nib;

	ret = FUNC3(led_pdata->regmap, data->reg, regval);

access_error:
	FUNC1(&priv->access_lock);

	return ret;
}