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
struct rpr0521_data {TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rpr0521_data* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int FUNC3 (struct rpr0521_data*) ; 
 int FUNC4 (struct rpr0521_data*) ; 

__attribute__((used)) static int FUNC5(struct iio_trigger *trigger,
	bool enable_drdy)
{
	struct iio_dev *indio_dev = FUNC2(trigger);
	struct rpr0521_data *data = FUNC1(indio_dev);
	int err;

	if (enable_drdy)
		err = FUNC4(data);
	else
		err = FUNC3(data);
	if (err)
		FUNC0(&data->client->dev, "rpr0521_pxs_drdy_set_state failed\n");

	return err;
}