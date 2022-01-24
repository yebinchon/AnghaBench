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
struct sx9500_data {int /*<<< orphan*/  completion; int /*<<< orphan*/  mutex; TYPE_1__* client; } ;
struct iio_chan_spec {int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sx9500_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sx9500_data*) ; 
 int FUNC5 (struct sx9500_data*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sx9500_data*) ; 
 int FUNC7 (struct sx9500_data*,struct iio_chan_spec const*,int*) ; 
 int FUNC8 (struct sx9500_data*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sx9500_data *data,
				 const struct iio_chan_spec *chan,
				 int *val)
{
	int ret;

	FUNC0(&data->mutex);

	ret = FUNC5(data, chan->channel);
	if (ret < 0)
		goto out;

	ret = FUNC6(data);
	if (ret < 0)
		goto out_dec_chan;

	FUNC1(&data->mutex);

	if (data->client->irq > 0)
		ret = FUNC9(&data->completion);
	else
		ret = FUNC8(data);

	FUNC0(&data->mutex);

	if (ret < 0)
		goto out_dec_data_rdy;

	ret = FUNC7(data, chan, val);
	if (ret < 0)
		goto out_dec_data_rdy;

	ret = FUNC4(data);
	if (ret < 0)
		goto out_dec_chan;

	ret = FUNC3(data, chan->channel);
	if (ret < 0)
		goto out;

	ret = IIO_VAL_INT;

	goto out;

out_dec_data_rdy:
	FUNC4(data);
out_dec_chan:
	FUNC3(data, chan->channel);
out:
	FUNC1(&data->mutex);
	FUNC2(&data->completion);

	return ret;
}