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
typedef  int u8 ;
struct zpa2326_private {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct iio_dev {int dummy; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_PRESSURE 129 
#define  IIO_TEMP 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  ZPA2326_PRESS_OUT_XL_REG ; 
 int /*<<< orphan*/  ZPA2326_TEMP_OUT_L_REG ; 
 scalar_t__ FUNC0 (struct iio_dev const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev const*,char*,int) ; 

__attribute__((used)) static int FUNC5(const struct iio_dev *indio_dev,
				    enum iio_chan_type    type,
				    int                  *value)
{
	struct regmap *regs = ((struct zpa2326_private *)
			       FUNC0(indio_dev))->regmap;
	int            err;

	switch (type) {
	case IIO_PRESSURE:
		FUNC3(indio_dev, "fetching raw pressure sample");

		err = FUNC2(regs, ZPA2326_PRESS_OUT_XL_REG, value,
				       3);
		if (err) {
			FUNC4(indio_dev, "failed to fetch pressure (%d)",
				     err);
			return err;
		}

		/* Pressure is a 24 bits wide little-endian unsigned int. */
		*value = (((u8 *)value)[2] << 16) | (((u8 *)value)[1] << 8) |
			 ((u8 *)value)[0];

		return IIO_VAL_INT;

	case IIO_TEMP:
		FUNC3(indio_dev, "fetching raw temperature sample");

		err = FUNC2(regs, ZPA2326_TEMP_OUT_L_REG, value, 2);
		if (err) {
			FUNC4(indio_dev,
				     "failed to fetch temperature (%d)", err);
			return err;
		}

		/* Temperature is a 16 bits wide little-endian signed int. */
		*value = (int)FUNC1((__le16 *)value);

		return IIO_VAL_INT;

	default:
		return -EINVAL;
	}
}