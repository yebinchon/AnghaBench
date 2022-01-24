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
typedef  int u16 ;
struct kxsd9_state {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  raw_val ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_OFFSET 130 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_INT ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 unsigned int KXSD9_CTRL_C_FS_MASK ; 
 int /*<<< orphan*/  KXSD9_REG_CTRL_C ; 
 int KXSD9_ZERO_G_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct kxsd9_state* FUNC1 (struct iio_dev*) ; 
 int* kxsd9_micro_scales ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
			  struct iio_chan_spec const *chan,
			  int *val, int *val2, long mask)
{
	int ret = -EINVAL;
	struct kxsd9_state *st = FUNC1(indio_dev);
	unsigned int regval;
	__be16 raw_val;
	u16 nval;

	FUNC2(st->dev);

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC5(st->map, chan->address, &raw_val,
				       sizeof(raw_val));
		if (ret)
			goto error_ret;
		nval = FUNC0(raw_val);
		/* Only 12 bits are valid */
		nval >>= 4;
		*val = nval;
		ret = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_OFFSET:
		/* This has a bias of -2048 */
		*val = KXSD9_ZERO_G_OFFSET;
		ret = IIO_VAL_INT;
		break;
	case IIO_CHAN_INFO_SCALE:
		ret = FUNC6(st->map,
				  KXSD9_REG_CTRL_C,
				  &regval);
		if (ret < 0)
			goto error_ret;
		*val = 0;
		*val2 = kxsd9_micro_scales[regval & KXSD9_CTRL_C_FS_MASK];
		ret = IIO_VAL_INT_PLUS_MICRO;
		break;
	}

error_ret:
	FUNC3(st->dev);
	FUNC4(st->dev);

	return ret;
}