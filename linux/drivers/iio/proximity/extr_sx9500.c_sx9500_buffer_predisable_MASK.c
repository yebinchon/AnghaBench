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
struct sx9500_data {int /*<<< orphan*/  mutex; } ;
struct iio_dev {int /*<<< orphan*/  active_scan_mask; } ;

/* Variables and functions */
 int SX9500_NUM_CHANNELS ; 
 struct sx9500_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sx9500_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sx9500_data*,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct sx9500_data *data = FUNC0(indio_dev);
	int ret = 0, i;

	FUNC1(indio_dev);

	FUNC2(&data->mutex);

	for (i = 0; i < SX9500_NUM_CHANNELS; i++)
		if (FUNC6(i, indio_dev->active_scan_mask)) {
			ret = FUNC4(data, i);
			if (ret)
				break;
		}

	if (ret)
		for (i = i - 1; i >= 0; i--)
			if (FUNC6(i, indio_dev->active_scan_mask))
				FUNC5(data, i);

	FUNC3(&data->mutex);

	return ret;
}