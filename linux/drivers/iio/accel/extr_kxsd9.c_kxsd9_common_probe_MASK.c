#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct kxsd9_state {int /*<<< orphan*/  scale; TYPE_2__* regs; int /*<<< orphan*/  orientation; struct regmap* map; struct device* dev; } ;
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  available_scan_masks; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; int /*<<< orphan*/  num_channels; TYPE_2__* channels; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  KXSD9_CTRL_C_FS_2G ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_pollfunc_store_time ; 
 struct kxsd9_state* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iio_dev*) ; 
 int FUNC9 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kxsd9_buffer_setup_ops ; 
 TYPE_2__* kxsd9_channels ; 
 int /*<<< orphan*/  kxsd9_info ; 
 int /*<<< orphan*/  FUNC10 (struct kxsd9_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct kxsd9_state*) ; 
 int /*<<< orphan*/  kxsd9_reg_iovdd ; 
 int /*<<< orphan*/  kxsd9_reg_vdd ; 
 int /*<<< orphan*/  kxsd9_scan_masks ; 
 int /*<<< orphan*/  kxsd9_trigger_handler ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 

int FUNC18(struct device *dev,
		       struct regmap *map,
		       const char *name)
{
	struct iio_dev *indio_dev;
	struct kxsd9_state *st;
	int ret;

	indio_dev = FUNC3(dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC6(indio_dev);
	st->dev = dev;
	st->map = map;

	indio_dev->channels = kxsd9_channels;
	indio_dev->num_channels = FUNC0(kxsd9_channels);
	indio_dev->name = name;
	indio_dev->dev.parent = dev;
	indio_dev->info = &kxsd9_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->available_scan_masks = kxsd9_scan_masks;

	/* Read the mounting matrix, if present */
	ret = FUNC7(dev, "mount-matrix", &st->orientation);
	if (ret)
		return ret;

	/* Fetch and turn on regulators */
	st->regs[0].supply = kxsd9_reg_vdd;
	st->regs[1].supply = kxsd9_reg_iovdd;
	ret = FUNC4(dev,
				      FUNC0(st->regs),
				      st->regs);
	if (ret) {
		FUNC1(dev, "Cannot get regulators\n");
		return ret;
	}
	/* Default scaling */
	st->scale = KXSD9_CTRL_C_FS_2G;

	FUNC11(st);

	ret = FUNC9(indio_dev,
					 iio_pollfunc_store_time,
					 kxsd9_trigger_handler,
					 &kxsd9_buffer_setup_ops);
	if (ret) {
		FUNC1(dev, "triggered buffer setup failed\n");
		goto err_power_down;
	}

	ret = FUNC5(indio_dev);
	if (ret)
		goto err_cleanup_buffer;

	FUNC2(dev, indio_dev);

	/* Enable runtime PM */
	FUNC13(dev);
	FUNC15(dev);
	FUNC12(dev);
	/*
	 * Set autosuspend to two orders of magnitude larger than the
	 * start-up time. 20ms start-up time means 2000ms autosuspend,
	 * i.e. 2 seconds.
	 */
	FUNC16(dev, 2000);
	FUNC17(dev);
	FUNC14(dev);

	return 0;

err_cleanup_buffer:
	FUNC8(indio_dev);
err_power_down:
	FUNC10(st);

	return ret;
}