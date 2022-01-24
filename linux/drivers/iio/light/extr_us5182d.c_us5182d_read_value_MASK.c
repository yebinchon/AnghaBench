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
struct us5182d_data {scalar_t__ power_mode; int /*<<< orphan*/  lock; } ;
struct iio_chan_spec {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ IIO_LIGHT ; 
 scalar_t__ US5182D_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct us5182d_data*) ; 
 int FUNC3 (struct us5182d_data*) ; 
 int FUNC4 (struct us5182d_data*) ; 
 int FUNC5 (struct us5182d_data*,int) ; 

__attribute__((used)) static int FUNC6(struct us5182d_data *data,
			      struct iio_chan_spec const *chan)
{
	int ret, value;

	FUNC0(&data->lock);

	if (data->power_mode == US5182D_ONESHOT) {
		ret = FUNC4(data);
		if (ret < 0)
			goto out_err;
	}

	ret = FUNC5(data, true);
	if (ret < 0)
		goto out_err;

	if (chan->type == IIO_LIGHT)
		ret = FUNC2(data);
	else
		ret = FUNC3(data);
	if (ret < 0)
		goto out_poweroff;

	value = ret;

	ret = FUNC5(data, false);
	if (ret < 0)
		goto out_err;

	FUNC1(&data->lock);
	return value;

out_poweroff:
	FUNC5(data, false);
out_err:
	FUNC1(&data->lock);
	return ret;
}