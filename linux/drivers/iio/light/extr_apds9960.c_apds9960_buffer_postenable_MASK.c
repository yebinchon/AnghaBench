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
struct iio_dev {int dummy; } ;
struct apds9960_data {TYPE_1__* client; int /*<<< orphan*/  reg_enable_ges; int /*<<< orphan*/  reg_int_ges; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct apds9960_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev)
{
	struct apds9960_data *data = FUNC0(indio_dev);
	int ret;

	ret = FUNC2(data->reg_int_ges, 1);
	if (ret)
		return ret;

	ret = FUNC2(data->reg_enable_ges, 1);
	if (ret)
		return ret;

	FUNC1(&data->client->dev);

	return 0;
}