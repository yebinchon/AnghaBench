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
struct stk8312_data {int dready_trigger_on; TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int STK8312_DREADY_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct stk8312_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int FUNC3 (struct stk8312_data*,int) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig,
					      bool state)
{
	struct iio_dev *indio_dev = FUNC2(trig);
	struct stk8312_data *data = FUNC1(indio_dev);
	int ret;

	if (state)
		ret = FUNC3(data, STK8312_DREADY_BIT);
	else
		ret = FUNC3(data, 0x00);

	if (ret < 0) {
		FUNC0(&data->client->dev, "failed to set trigger state\n");
		return ret;
	}

	data->dready_trigger_on = state;

	return 0;
}