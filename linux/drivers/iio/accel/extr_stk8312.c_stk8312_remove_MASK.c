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
struct stk8312_data {scalar_t__ dready_trig; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STK8312_MODE_STANDBY ; 
 struct iio_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct stk8312_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int FUNC5 (struct stk8312_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct iio_dev *indio_dev = FUNC0(client);
	struct stk8312_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC4(indio_dev);

	if (data->dready_trig)
		FUNC3(data->dready_trig);

	return FUNC5(data, STK8312_MODE_STANDBY);
}