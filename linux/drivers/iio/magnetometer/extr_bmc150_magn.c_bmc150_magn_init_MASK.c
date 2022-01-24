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
struct bmc150_magn_preset {int /*<<< orphan*/  odr; int /*<<< orphan*/  rep_z; int /*<<< orphan*/  rep_xy; } ;
struct bmc150_magn_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int BMC150_MAGN_CHIP_ID_VAL ; 
 size_t BMC150_MAGN_DEFAULT_PRESET ; 
 int /*<<< orphan*/  BMC150_MAGN_POWER_MODE_NORMAL ; 
 int /*<<< orphan*/  BMC150_MAGN_POWER_MODE_SUSPEND ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_CHIP_ID ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_XY ; 
 int /*<<< orphan*/  BMC150_MAGN_REG_REP_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 struct bmc150_magn_preset* bmc150_magn_presets_table ; 
 int FUNC2 (struct bmc150_magn_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bmc150_magn_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bmc150_magn_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct bmc150_magn_data *data)
{
	int ret, chip_id;
	struct bmc150_magn_preset preset;

	ret = FUNC4(data, BMC150_MAGN_POWER_MODE_SUSPEND,
					 false);
	if (ret < 0) {
		FUNC6(data->dev,
			"Failed to bring up device from suspend mode\n");
		return ret;
	}

	ret = FUNC7(data->regmap, BMC150_MAGN_REG_CHIP_ID, &chip_id);
	if (ret < 0) {
		FUNC6(data->dev, "Failed reading chip id\n");
		goto err_poweroff;
	}
	if (chip_id != BMC150_MAGN_CHIP_ID_VAL) {
		FUNC6(data->dev, "Invalid chip id 0x%x\n", chip_id);
		ret = -ENODEV;
		goto err_poweroff;
	}
	FUNC5(data->dev, "Chip id %x\n", chip_id);

	preset = bmc150_magn_presets_table[BMC150_MAGN_DEFAULT_PRESET];
	ret = FUNC3(data, preset.odr);
	if (ret < 0) {
		FUNC6(data->dev, "Failed to set ODR to %d\n",
			preset.odr);
		goto err_poweroff;
	}

	ret = FUNC8(data->regmap, BMC150_MAGN_REG_REP_XY,
			   FUNC0(preset.rep_xy));
	if (ret < 0) {
		FUNC6(data->dev, "Failed to set REP XY to %d\n",
			preset.rep_xy);
		goto err_poweroff;
	}

	ret = FUNC8(data->regmap, BMC150_MAGN_REG_REP_Z,
			   FUNC1(preset.rep_z));
	if (ret < 0) {
		FUNC6(data->dev, "Failed to set REP Z to %d\n",
			preset.rep_z);
		goto err_poweroff;
	}

	ret = FUNC2(data, preset.rep_xy, preset.rep_z,
				      preset.odr);
	if (ret < 0)
		goto err_poweroff;

	ret = FUNC4(data, BMC150_MAGN_POWER_MODE_NORMAL,
					 true);
	if (ret < 0) {
		FUNC6(data->dev, "Failed to power on device\n");
		goto err_poweroff;
	}

	return 0;

err_poweroff:
	FUNC4(data, BMC150_MAGN_POWER_MODE_SUSPEND, true);
	return ret;
}