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
struct iio_sw_device {struct iio_dev* device; } ;
struct iio_dummy_state {int /*<<< orphan*/  lock; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct iio_sw_device* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 struct iio_dev* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_dummy_channels ; 
 int /*<<< orphan*/  iio_dummy_info ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_dummy_type ; 
 struct iio_dummy_state* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct iio_dev*) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct iio_sw_device*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct iio_sw_device*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 struct iio_sw_device* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iio_sw_device *FUNC16(const char *name)
{
	int ret;
	struct iio_dev *indio_dev;
	struct iio_dummy_state *st;
	struct iio_sw_device *swd;

	swd = FUNC14(sizeof(*swd), GFP_KERNEL);
	if (!swd) {
		ret = -ENOMEM;
		goto error_kzalloc;
	}
	/*
	 * Allocate an IIO device.
	 *
	 * This structure contains all generic state
	 * information about the device instance.
	 * It also has a region (accessed by iio_priv()
	 * for chip specific state information.
	 */
	indio_dev = FUNC2(sizeof(*st));
	if (!indio_dev) {
		ret = -ENOMEM;
		goto error_ret;
	}

	st = FUNC6(indio_dev);
	FUNC15(&st->lock);

	FUNC5(indio_dev);
	/*
	 * With hardware: Set the parent device.
	 * indio_dev->dev.parent = &spi->dev;
	 * indio_dev->dev.parent = &client->dev;
	 */

	 /*
	 * Make the iio_dev struct available to remove function.
	 * Bus equivalents
	 * i2c_set_clientdata(client, indio_dev);
	 * spi_set_drvdata(spi, indio_dev);
	 */
	swd->device = indio_dev;

	/*
	 * Set the device name.
	 *
	 * This is typically a part number and obtained from the module
	 * id table.
	 * e.g. for i2c and spi:
	 *    indio_dev->name = id->name;
	 *    indio_dev->name = spi_get_device_id(spi)->name;
	 */
	indio_dev->name = FUNC13(name, GFP_KERNEL);

	/* Provide description of available channels */
	indio_dev->channels = iio_dummy_channels;
	indio_dev->num_channels = FUNC0(iio_dummy_channels);

	/*
	 * Provide device type specific interface functions and
	 * constant data.
	 */
	indio_dev->info = &iio_dummy_info;

	/* Specify that device provides sysfs type interfaces */
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC8(indio_dev);
	if (ret < 0)
		goto error_free_device;

	ret = FUNC7(indio_dev);
	if (ret < 0)
		goto error_unregister_events;

	ret = FUNC4(indio_dev);
	if (ret < 0)
		goto error_unconfigure_buffer;

	FUNC11(swd, name, &iio_dummy_type);

	return swd;
error_unconfigure_buffer:
	FUNC10(indio_dev);
error_unregister_events:
	FUNC9(indio_dev);
error_free_device:
	FUNC3(indio_dev);
error_ret:
	FUNC12(swd);
error_kzalloc:
	return FUNC1(ret);
}