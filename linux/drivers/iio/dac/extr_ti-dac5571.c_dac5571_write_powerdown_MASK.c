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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct dac5571_data {int powerdown; int (* dac5571_pwrdwn ) (struct dac5571_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* dac5571_cmd ) (struct dac5571_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/ * val; int /*<<< orphan*/  powerdown_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dac5571_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int*) ; 
 int FUNC5 (struct dac5571_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dac5571_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct iio_dev *indio_dev,
				       uintptr_t private,
				       const struct iio_chan_spec *chan,
				       const char *buf, size_t len)
{
	struct dac5571_data *data = FUNC1(indio_dev);
	bool powerdown;
	int ret;

	ret = FUNC4(buf, &powerdown);
	if (ret)
		return ret;

	if (data->powerdown == powerdown)
		return len;

	FUNC2(&data->lock);
	if (powerdown)
		ret = data->dac5571_pwrdwn(data, chan->channel,
			    FUNC0(data->powerdown_mode));
	else
		ret = data->dac5571_cmd(data, chan->channel, data->val[0]);
	if (ret)
		goto out;

	data->powerdown = powerdown;

 out:
	FUNC3(&data->lock);

	return ret ? ret : len;
}