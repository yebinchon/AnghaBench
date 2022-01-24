#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  modes; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; TYPE_1__ dev; } ;
struct i2c_device_id {char* name; scalar_t__ driver_data; } ;
struct TYPE_20__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct ak8975_platform_data {int eoc_gpio; int /*<<< orphan*/  orientation; } ;
struct ak8975_data {int eoc_gpio; int /*<<< orphan*/  lock; TYPE_15__* def; void* vid; void* vdd; int /*<<< orphan*/  orientation; scalar_t__ eoc_irq; struct i2c_client* client; } ;
typedef  enum asahi_compass_chipset { ____Placeholder_asahi_compass_chipset } asahi_compass_chipset ;
struct TYPE_18__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int AK_MAX_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  ak8975_channels ; 
 int /*<<< orphan*/  ak8975_handle_trigger ; 
 int /*<<< orphan*/  ak8975_info ; 
 char* FUNC4 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ak8975_data*) ; 
 int FUNC6 (struct ak8975_data*) ; 
 int /*<<< orphan*/  ak8975_scan_masks ; 
 int FUNC7 (struct i2c_client*) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 TYPE_15__* ak_def_array ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,...) ; 
 struct ak8975_platform_data* FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ,char*) ; 
 struct iio_dev* FUNC13 (TYPE_2__*,int) ; 
 void* FUNC14 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC17 (struct iio_dev*) ; 
 struct ak8975_data* FUNC18 (struct iio_dev*) ; 
 int FUNC19 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct iio_dev*) ; 
 int FUNC21 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC30(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ak8975_data *data;
	struct iio_dev *indio_dev;
	int eoc_gpio;
	int err;
	const char *name = NULL;
	enum asahi_compass_chipset chipset = AK_MAX_TYPE;
	const struct ak8975_platform_data *pdata =
		FUNC11(&client->dev);

	/* Grab and set up the supplied GPIO. */
	if (pdata)
		eoc_gpio = pdata->eoc_gpio;
	else if (client->dev.of_node)
		eoc_gpio = FUNC23(client->dev.of_node, 0);
	else
		eoc_gpio = -1;

	if (eoc_gpio == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	/* We may not have a GPIO based IRQ to scan, that is fine, we will
	   poll if so */
	if (FUNC15(eoc_gpio)) {
		err = FUNC12(&client->dev, eoc_gpio,
							GPIOF_IN, "ak_8975");
		if (err < 0) {
			FUNC10(&client->dev,
				"failed to request GPIO %d, error %d\n",
							eoc_gpio, err);
			return err;
		}
	}

	/* Register with IIO */
	indio_dev = FUNC13(&client->dev, sizeof(*data));
	if (indio_dev == NULL)
		return -ENOMEM;

	data = FUNC18(indio_dev);
	FUNC16(client, indio_dev);

	data->client = client;
	data->eoc_gpio = eoc_gpio;
	data->eoc_irq = 0;

	if (!pdata) {
		err = FUNC19(&client->dev, "mount-matrix",
					    &data->orientation);
		if (err)
			return err;
	} else
		data->orientation = pdata->orientation;

	/* id will be NULL when enumerated via ACPI */
	if (id) {
		chipset = (enum asahi_compass_chipset)(id->driver_data);
		name = id->name;
	} else if (FUNC0(&client->dev)) {
		name = FUNC4(&client->dev, &chipset);
		if (!name)
			return -ENODEV;
	} else
		return -ENOSYS;

	if (chipset >= AK_MAX_TYPE) {
		FUNC10(&client->dev, "AKM device type unsupported: %d\n",
			chipset);
		return -ENODEV;
	}

	data->def = &ak_def_array[chipset];

	/* Fetch the regulators */
	data->vdd = FUNC14(&client->dev, "vdd");
	if (FUNC2(data->vdd))
		return FUNC3(data->vdd);
	data->vid = FUNC14(&client->dev, "vid");
	if (FUNC2(data->vid))
		return FUNC3(data->vid);

	err = FUNC6(data);
	if (err)
		return err;

	err = FUNC8(client, data->def->type);
	if (err < 0) {
		FUNC10(&client->dev, "Unexpected device\n");
		goto power_off;
	}
	FUNC9(&client->dev, "Asahi compass chip %s\n", name);

	/* Perform some basic start-of-day setup of the device. */
	err = FUNC7(client);
	if (err < 0) {
		FUNC10(&client->dev, "%s initialization fails\n", name);
		goto power_off;
	}

	FUNC22(&data->lock);
	indio_dev->dev.parent = &client->dev;
	indio_dev->channels = ak8975_channels;
	indio_dev->num_channels = FUNC1(ak8975_channels);
	indio_dev->info = &ak8975_info;
	indio_dev->available_scan_masks = ak8975_scan_masks;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->name = name;

	err = FUNC21(indio_dev, NULL, ak8975_handle_trigger,
					 NULL);
	if (err) {
		FUNC10(&client->dev, "triggered buffer setup failed\n");
		goto power_off;
	}

	err = FUNC17(indio_dev);
	if (err) {
		FUNC10(&client->dev, "device register failed\n");
		goto cleanup_buffer;
	}

	/* Enable runtime PM */
	FUNC25(&client->dev);
	FUNC27(&client->dev);
	FUNC24(&client->dev);
	/*
	 * The device comes online in 500us, so add two orders of magnitude
	 * of delay before autosuspending: 50 ms.
	 */
	FUNC28(&client->dev, 50);
	FUNC29(&client->dev);
	FUNC26(&client->dev);

	return 0;

cleanup_buffer:
	FUNC20(indio_dev);
power_off:
	FUNC5(data);
	return err;
}