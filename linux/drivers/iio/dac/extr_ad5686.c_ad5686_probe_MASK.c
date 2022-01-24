#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ad5686_state {int (* write ) (struct ad5686_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int vref_mv; int pwr_down_mode; int use_internal_vref; int /*<<< orphan*/  reg; TYPE_2__* chip_info; int /*<<< orphan*/  read; struct device* dev; } ;
typedef  enum ad5686_supported_device_ids { ____Placeholder_ad5686_supported_device_ids } ad5686_supported_device_ids ;
typedef  int (* ad5686_write_func ) (struct ad5686_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;
typedef  int /*<<< orphan*/  ad5686_read_func ;
struct TYPE_4__ {int int_vref_mv; int num_channels; int regmap_type; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 unsigned int AD5310_REF_BIT_MSK ; 
#define  AD5310_REGMAP 131 
 unsigned int AD5683_REF_BIT_MSK ; 
#define  AD5683_REGMAP 130 
 int /*<<< orphan*/  AD5686_CMD_CONTROL_REG ; 
 int /*<<< orphan*/  AD5686_CMD_INTERNAL_REFER_SETUP ; 
#define  AD5686_REGMAP 129 
 unsigned int AD5693_REF_BIT_MSK ; 
#define  AD5693_REGMAP 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ad5686_chip_info_tbl ; 
 int /*<<< orphan*/  ad5686_info ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct iio_dev*) ; 
 struct ad5686_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ad5686_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct device *dev,
		 enum ad5686_supported_device_ids chip_type,
		 const char *name, ad5686_write_func write,
		 ad5686_read_func read)
{
	struct ad5686_state *st;
	struct iio_dev *indio_dev;
	unsigned int val, ref_bit_msk;
	u8 cmd;
	int ret, i, voltage_uv = 0;

	indio_dev = FUNC2(dev, sizeof(*st));
	if (indio_dev == NULL)
		return  -ENOMEM;

	st = FUNC5(indio_dev);
	FUNC1(dev, indio_dev);

	st->dev = dev;
	st->write = write;
	st->read = read;

	st->reg = FUNC3(dev, "vcc");
	if (!FUNC0(st->reg)) {
		ret = FUNC7(st->reg);
		if (ret)
			return ret;

		ret = FUNC8(st->reg);
		if (ret < 0)
			goto error_disable_reg;

		voltage_uv = ret;
	}

	st->chip_info = &ad5686_chip_info_tbl[chip_type];

	if (voltage_uv)
		st->vref_mv = voltage_uv / 1000;
	else
		st->vref_mv = st->chip_info->int_vref_mv;

	/* Set all the power down mode for all channels to 1K pulldown */
	for (i = 0; i < st->chip_info->num_channels; i++)
		st->pwr_down_mode |= (0x01 << (i * 2));

	indio_dev->dev.parent = dev;
	indio_dev->name = name;
	indio_dev->info = &ad5686_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = st->chip_info->channels;
	indio_dev->num_channels = st->chip_info->num_channels;

	switch (st->chip_info->regmap_type) {
	case AD5310_REGMAP:
		cmd = AD5686_CMD_CONTROL_REG;
		ref_bit_msk = AD5310_REF_BIT_MSK;
		st->use_internal_vref = !voltage_uv;
		break;
	case AD5683_REGMAP:
		cmd = AD5686_CMD_CONTROL_REG;
		ref_bit_msk = AD5683_REF_BIT_MSK;
		st->use_internal_vref = !voltage_uv;
		break;
	case AD5686_REGMAP:
		cmd = AD5686_CMD_INTERNAL_REFER_SETUP;
		ref_bit_msk = 0;
		break;
	case AD5693_REGMAP:
		cmd = AD5686_CMD_CONTROL_REG;
		ref_bit_msk = AD5693_REF_BIT_MSK;
		st->use_internal_vref = !voltage_uv;
		break;
	default:
		ret = -EINVAL;
		goto error_disable_reg;
	}

	val = (voltage_uv | ref_bit_msk);

	ret = st->write(st, cmd, 0, !!val);
	if (ret)
		goto error_disable_reg;

	ret = FUNC4(indio_dev);
	if (ret)
		goto error_disable_reg;

	return 0;

error_disable_reg:
	if (!FUNC0(st->reg))
		FUNC6(st->reg);
	return ret;
}