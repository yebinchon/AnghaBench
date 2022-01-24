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
typedef  scalar_t__ u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct gp2ap020a00f_data {int* thresh_val; int /*<<< orphan*/  lock; } ;
typedef  enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef  enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef  enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GP2AP020A00F_PH_L_REG ; 
 size_t FUNC0 (scalar_t__) ; 
 int IIO_VAL_INT ; 
 scalar_t__ FUNC1 (struct iio_chan_spec const*,int) ; 
 struct gp2ap020a00f_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev,
				       const struct iio_chan_spec *chan,
				       enum iio_event_type type,
				       enum iio_event_direction dir,
				       enum iio_event_info info,
				       int *val, int *val2)
{
	struct gp2ap020a00f_data *data = FUNC2(indio_dev);
	u8 thresh_reg_l;
	int err = IIO_VAL_INT;

	FUNC3(&data->lock);

	thresh_reg_l = FUNC1(chan, dir);

	if (thresh_reg_l > GP2AP020A00F_PH_L_REG) {
		err = -EINVAL;
		goto error_unlock;
	}

	*val = data->thresh_val[FUNC0(thresh_reg_l)];

error_unlock:
	FUNC4(&data->lock);

	return err;
}