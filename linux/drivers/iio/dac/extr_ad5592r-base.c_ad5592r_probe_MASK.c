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
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {char const* name; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {scalar_t__ of_node; } ;
struct ad5592r_state {int num_channels; int /*<<< orphan*/ * reg; struct ad5592r_rw_ops const* ops; struct device* dev; } ;
struct ad5592r_rw_ops {int (* reg_write ) (struct ad5592r_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AD5592R_REG_PD ; 
 int /*<<< orphan*/  AD5592R_REG_PD_EN_REF ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ad5592r_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct ad5592r_state*) ; 
 int FUNC4 (struct ad5592r_state*) ; 
 int /*<<< orphan*/  ad5592r_info ; 
 int /*<<< orphan*/  FUNC5 (struct ad5592r_state*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ad5592r_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct ad5592r_state*) ; 
 int FUNC8 (struct ad5592r_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC10 (struct device*,int) ; 
 int /*<<< orphan*/ * FUNC11 (struct device*,char*) ; 
 int FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct iio_dev*) ; 
 struct ad5592r_state* FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct ad5592r_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC18(struct device *dev, const char *name,
		const struct ad5592r_rw_ops *ops)
{
	struct iio_dev *iio_dev;
	struct ad5592r_state *st;
	int ret;

	iio_dev = FUNC10(dev, sizeof(*st));
	if (!iio_dev)
		return -ENOMEM;

	st = FUNC14(iio_dev);
	st->dev = dev;
	st->ops = ops;
	st->num_channels = 8;
	FUNC9(dev, iio_dev);

	st->reg = FUNC11(dev, "vref");
	if (FUNC0(st->reg)) {
		if ((FUNC1(st->reg) != -ENODEV) && dev->of_node)
			return FUNC1(st->reg);

		st->reg = NULL;
	} else {
		ret = FUNC16(st->reg);
		if (ret)
			return ret;
	}

	iio_dev->dev.parent = dev;
	iio_dev->name = name;
	iio_dev->info = &ad5592r_info;
	iio_dev->modes = INDIO_DIRECT_MODE;

	FUNC5(st, FUNC3(st));

	ret = FUNC6(st);
	if (ret)
		goto error_disable_reg;

	ret = ops->reg_write(st, AD5592R_REG_PD,
		     (st->reg == NULL) ? AD5592R_REG_PD_EN_REF : 0);
	if (ret)
		goto error_disable_reg;

	ret = FUNC2(st);
	if (ret)
		goto error_disable_reg;

	ret = FUNC8(st);
	if (ret)
		goto error_reset_ch_modes;

	ret = FUNC12(iio_dev);
	if (ret)
		goto error_reset_ch_modes;

	ret = FUNC4(st);
	if (ret)
		goto error_dev_unregister;

	return 0;

error_dev_unregister:
	FUNC13(iio_dev);

error_reset_ch_modes:
	FUNC7(st);

error_disable_reg:
	if (st->reg)
		FUNC15(st->reg);

	return ret;
}