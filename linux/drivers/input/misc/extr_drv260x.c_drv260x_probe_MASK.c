#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct drv260x_data {int mode; int library; TYPE_1__* input_dev; int /*<<< orphan*/  regmap; struct i2c_client* client; int /*<<< orphan*/  work; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  regulator; void* overdrive_voltage; void* rated_voltage; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  close; } ;

/* Variables and functions */
 void* DRV260X_DEF_OD_CLAMP_VOLT ; 
 void* DRV260X_DEF_RATED_VOLT ; 
 int DRV260X_ERM_LIB_F ; 
 int DRV260X_ERM_MODE ; 
 int DRV260X_LIB_EMPTY ; 
 int DRV260X_LIB_LRA ; 
 int DRV260X_LRA_MODE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int FUNC4 (struct device*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct device*) ; 
 struct drv260x_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  drv260x_close ; 
 int /*<<< orphan*/  drv260x_haptics_play ; 
 int FUNC11 (struct drv260x_data*) ; 
 int /*<<< orphan*/  drv260x_regmap_config ; 
 int /*<<< orphan*/  drv260x_worker ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,struct drv260x_data*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,struct drv260x_data*) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct drv260x_data *haptics;
	u32 voltage;
	int error;

	haptics = FUNC7(dev, sizeof(*haptics), GFP_KERNEL);
	if (!haptics)
		return -ENOMEM;

	error = FUNC4(dev, "mode", &haptics->mode);
	if (error) {
		FUNC3(dev, "Can't fetch 'mode' property: %d\n", error);
		return error;
	}

	if (haptics->mode < DRV260X_LRA_MODE ||
	    haptics->mode > DRV260X_ERM_MODE) {
		FUNC3(dev, "Vibrator mode is invalid: %i\n", haptics->mode);
		return -EINVAL;
	}

	error = FUNC4(dev, "library-sel", &haptics->library);
	if (error) {
		FUNC3(dev, "Can't fetch 'library-sel' property: %d\n", error);
		return error;
	}

	if (haptics->library < DRV260X_LIB_EMPTY ||
	    haptics->library > DRV260X_ERM_LIB_F) {
		FUNC3(dev,
			"Library value is invalid: %i\n", haptics->library);
		return -EINVAL;
	}

	if (haptics->mode == DRV260X_LRA_MODE &&
	    haptics->library != DRV260X_LIB_EMPTY &&
	    haptics->library != DRV260X_LIB_LRA) {
		FUNC3(dev, "LRA Mode with ERM Library mismatch\n");
		return -EINVAL;
	}

	if (haptics->mode == DRV260X_ERM_MODE &&
	    (haptics->library == DRV260X_LIB_EMPTY ||
	     haptics->library == DRV260X_LIB_LRA)) {
		FUNC3(dev, "ERM Mode with LRA Library mismatch\n");
		return -EINVAL;
	}

	error = FUNC4(dev, "vib-rated-mv", &voltage);
	haptics->rated_voltage = error ? DRV260X_DEF_RATED_VOLT :
					 FUNC10(voltage);

	error = FUNC4(dev, "vib-overdrive-mv", &voltage);
	haptics->overdrive_voltage = error ? DRV260X_DEF_OD_CLAMP_VOLT :
					     FUNC10(voltage);

	haptics->regulator = FUNC9(dev, "vbat");
	if (FUNC1(haptics->regulator)) {
		error = FUNC2(haptics->regulator);
		FUNC3(dev, "unable to get regulator, error: %d\n", error);
		return error;
	}

	haptics->enable_gpio = FUNC5(dev, "enable",
						       GPIOD_OUT_HIGH);
	if (FUNC1(haptics->enable_gpio))
		return FUNC2(haptics->enable_gpio);

	haptics->input_dev = FUNC6(dev);
	if (!haptics->input_dev) {
		FUNC3(dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	haptics->input_dev->name = "drv260x:haptics";
	haptics->input_dev->close = drv260x_close;
	FUNC16(haptics->input_dev, haptics);
	FUNC15(haptics->input_dev, EV_FF, FF_RUMBLE);

	error = FUNC13(haptics->input_dev, NULL,
					drv260x_haptics_play);
	if (error) {
		FUNC3(dev, "input_ff_create() failed: %d\n", error);
		return error;
	}

	FUNC0(&haptics->work, drv260x_worker);

	haptics->client = client;
	FUNC12(client, haptics);

	haptics->regmap = FUNC8(client, &drv260x_regmap_config);
	if (FUNC1(haptics->regmap)) {
		error = FUNC2(haptics->regmap);
		FUNC3(dev, "Failed to allocate register map: %d\n", error);
		return error;
	}

	error = FUNC11(haptics);
	if (error) {
		FUNC3(dev, "Device init failed: %d\n", error);
		return error;
	}

	error = FUNC14(haptics->input_dev);
	if (error) {
		FUNC3(dev, "couldn't register input device: %d\n", error);
		return error;
	}

	return 0;
}