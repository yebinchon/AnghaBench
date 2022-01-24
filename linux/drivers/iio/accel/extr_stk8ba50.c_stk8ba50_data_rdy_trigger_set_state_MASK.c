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
struct stk8ba50_data {int dready_trigger_on; TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STK8BA50_DREADY_INT_MASK ; 
 int /*<<< orphan*/  STK8BA50_REG_INTEN2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct stk8ba50_data* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct iio_trigger*) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig,
					       bool state)
{
	struct iio_dev *indio_dev = FUNC3(trig);
	struct stk8ba50_data *data = FUNC2(indio_dev);
	int ret;

	if (state)
		ret = FUNC1(data->client,
			STK8BA50_REG_INTEN2, STK8BA50_DREADY_INT_MASK);
	else
		ret = FUNC1(data->client,
			STK8BA50_REG_INTEN2, 0x00);

	if (ret < 0)
		FUNC0(&data->client->dev, "failed to set trigger state\n");
	else
		data->dready_trigger_on = state;

	return ret;
}