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
struct ms5611_state {int /*<<< orphan*/ * pressure_osr; int /*<<< orphan*/ * temp_osr; int /*<<< orphan*/ * chip_info; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  modes; int /*<<< orphan*/ * channels; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/ * chip_info_tbl ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct iio_dev*) ; 
 struct ms5611_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ms5611_avail_pressure_osr ; 
 int /*<<< orphan*/ * ms5611_avail_temp_osr ; 
 int /*<<< orphan*/ * ms5611_channels ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  ms5611_info ; 
 int FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  ms5611_scan_masks ; 
 int /*<<< orphan*/  ms5611_trigger_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct iio_dev *indio_dev, struct device *dev,
		 const char *name, int type)
{
	int ret;
	struct ms5611_state *st = FUNC3(indio_dev);

	FUNC8(&st->lock);
	st->chip_info = &chip_info_tbl[type];
	st->temp_osr =
		&ms5611_avail_temp_osr[FUNC0(ms5611_avail_temp_osr) - 1];
	st->pressure_osr =
		&ms5611_avail_pressure_osr[FUNC0(ms5611_avail_pressure_osr)
					   - 1];
	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->info = &ms5611_info;
	indio_dev->channels = ms5611_channels;
	indio_dev->num_channels = FUNC0(ms5611_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->available_scan_masks = ms5611_scan_masks;

	ret = FUNC7(indio_dev);
	if (ret < 0)
		return ret;

	ret = FUNC5(indio_dev, NULL,
					 ms5611_trigger_handler, NULL);
	if (ret < 0) {
		FUNC1(dev, "iio triggered buffer setup failed\n");
		goto err_fini;
	}

	ret = FUNC2(indio_dev);
	if (ret < 0) {
		FUNC1(dev, "unable to register iio device\n");
		goto err_buffer_cleanup;
	}

	return 0;

err_buffer_cleanup:
	FUNC4(indio_dev);
err_fini:
	FUNC6(indio_dev);
	return ret;
}