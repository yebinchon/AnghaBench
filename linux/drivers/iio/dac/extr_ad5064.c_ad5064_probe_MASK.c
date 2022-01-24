#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device* parent; } ;
struct iio_dev {char const* name; unsigned int num_channels; TYPE_3__* channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ad5064_state {unsigned int* dac_cache; int /*<<< orphan*/  vref_reg; int /*<<< orphan*/  use_internal_vref; int /*<<< orphan*/ * pwr_down_mode; TYPE_4__* chip_info; int /*<<< orphan*/  write; struct device* dev; int /*<<< orphan*/  lock; } ;
typedef  enum ad5064_type { ____Placeholder_ad5064_type } ad5064_type ;
typedef  int /*<<< orphan*/  ad5064_write_func ;
struct TYPE_8__ {unsigned int num_channels; TYPE_3__* channels; } ;
struct TYPE_6__ {int realbits; } ;
struct TYPE_7__ {TYPE_2__ scan_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5064_LDAC_PWRDN_1K ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 TYPE_4__* ad5064_chip_info_tbl ; 
 int /*<<< orphan*/  ad5064_info ; 
 int /*<<< orphan*/  FUNC0 (struct ad5064_state*) ; 
 int FUNC1 (struct ad5064_state*,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct device*,int) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad5064_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev, enum ad5064_type type,
			const char *name, ad5064_write_func write)
{
	struct iio_dev *indio_dev;
	struct ad5064_state *st;
	unsigned int midscale;
	unsigned int i;
	int ret;

	indio_dev = FUNC3(dev, sizeof(*st));
	if (indio_dev == NULL)
		return  -ENOMEM;

	st = FUNC5(indio_dev);
	FUNC6(&st->lock);
	FUNC2(dev, indio_dev);

	st->chip_info = &ad5064_chip_info_tbl[type];
	st->dev = dev;
	st->write = write;

	ret = FUNC1(st, dev);
	if (ret)
		return ret;

	if (!st->use_internal_vref) {
		ret = FUNC8(FUNC0(st), st->vref_reg);
		if (ret)
			return ret;
	}

	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->info = &ad5064_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;

	midscale = (1 << indio_dev->channels[0].scan_type.realbits) /  2;

	for (i = 0; i < st->chip_info->num_channels; ++i) {
		st->pwr_down_mode[i] = AD5064_LDAC_PWRDN_1K;
		st->dac_cache[i] = midscale;
	}

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	if (!st->use_internal_vref)
		FUNC7(FUNC0(st), st->vref_reg);

	return ret;
}