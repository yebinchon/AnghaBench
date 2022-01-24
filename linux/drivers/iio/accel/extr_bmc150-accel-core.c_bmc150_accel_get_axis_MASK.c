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
struct TYPE_2__ {int shift; scalar_t__ realbits; } ;
struct iio_chan_spec {int scan_index; TYPE_1__ scan_type; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  raw_val ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct bmc150_accel_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct bmc150_accel_data *data,
				 struct iio_chan_spec const *chan,
				 int *val)
{
	struct device *dev = FUNC7(data->regmap);
	int ret;
	int axis = chan->scan_index;
	__le16 raw_val;

	FUNC4(&data->mutex);
	ret = FUNC1(data, true);
	if (ret < 0) {
		FUNC5(&data->mutex);
		return ret;
	}

	ret = FUNC6(data->regmap, FUNC0(axis),
			       &raw_val, sizeof(raw_val));
	if (ret < 0) {
		FUNC2(dev, "Error reading axis %d\n", axis);
		FUNC1(data, false);
		FUNC5(&data->mutex);
		return ret;
	}
	*val = FUNC8(FUNC3(raw_val) >> chan->scan_type.shift,
			     chan->scan_type.realbits - 1);
	ret = FUNC1(data, false);
	FUNC5(&data->mutex);
	if (ret < 0)
		return ret;

	return IIO_VAL_INT;
}