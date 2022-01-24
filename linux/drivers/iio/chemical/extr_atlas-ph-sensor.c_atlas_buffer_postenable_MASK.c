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
struct atlas_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct atlas_data*,int) ; 
 struct atlas_data* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct atlas_data *data = FUNC1(indio_dev);
	int ret;

	ret = FUNC2(indio_dev);
	if (ret)
		return ret;

	ret = FUNC3(&data->client->dev);
	if (ret < 0) {
		FUNC4(&data->client->dev);
		return ret;
	}

	return FUNC0(data, true);
}