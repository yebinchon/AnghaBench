#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  parent; } ;
struct i2c_client {TYPE_6__ dev; } ;
struct drv2667_data {TYPE_2__* input_dev; int /*<<< orphan*/  regmap; struct i2c_client* client; int /*<<< orphan*/  work; int /*<<< orphan*/  regulator; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct TYPE_12__ {char* name; int /*<<< orphan*/  close; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*,...) ; 
 TYPE_2__* FUNC4 (TYPE_6__*) ; 
 struct drv2667_data* FUNC5 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  drv2667_close ; 
 int /*<<< orphan*/  drv2667_haptics_play ; 
 int FUNC8 (struct drv2667_data*) ; 
 int /*<<< orphan*/  drv2667_regmap_config ; 
 int /*<<< orphan*/  drv2667_worker ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct drv2667_data*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct drv2667_data*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct drv2667_data *haptics;
	int error;

	haptics = FUNC5(&client->dev, sizeof(*haptics), GFP_KERNEL);
	if (!haptics)
		return -ENOMEM;

	haptics->regulator = FUNC7(&client->dev, "vbat");
	if (FUNC1(haptics->regulator)) {
		error = FUNC2(haptics->regulator);
		FUNC3(&client->dev,
			"unable to get regulator, error: %d\n", error);
		return error;
	}

	haptics->input_dev = FUNC4(&client->dev);
	if (!haptics->input_dev) {
		FUNC3(&client->dev, "Failed to allocate input device\n");
		return -ENOMEM;
	}

	haptics->input_dev->name = "drv2667:haptics";
	haptics->input_dev->dev.parent = client->dev.parent;
	haptics->input_dev->close = drv2667_close;
	FUNC13(haptics->input_dev, haptics);
	FUNC12(haptics->input_dev, EV_FF, FF_RUMBLE);

	error = FUNC10(haptics->input_dev, NULL,
					drv2667_haptics_play);
	if (error) {
		FUNC3(&client->dev, "input_ff_create() failed: %d\n",
			error);
		return error;
	}

	FUNC0(&haptics->work, drv2667_worker);

	haptics->client = client;
	FUNC9(client, haptics);

	haptics->regmap = FUNC6(client, &drv2667_regmap_config);
	if (FUNC1(haptics->regmap)) {
		error = FUNC2(haptics->regmap);
		FUNC3(&client->dev, "Failed to allocate register map: %d\n",
			error);
		return error;
	}

	error = FUNC8(haptics);
	if (error) {
		FUNC3(&client->dev, "Device init failed: %d\n", error);
		return error;
	}

	error = FUNC11(haptics->input_dev);
	if (error) {
		FUNC3(&client->dev, "couldn't register input device: %d\n",
			error);
		return error;
	}

	return 0;
}