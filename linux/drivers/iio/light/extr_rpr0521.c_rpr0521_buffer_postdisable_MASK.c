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
struct rpr0521_data {TYPE_1__* client; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RPR0521_MODE_ALS_MASK ; 
 int RPR0521_MODE_PXS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rpr0521_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rpr0521_data*,int,int) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	int err;
	struct rpr0521_data *data = FUNC1(indio_dev);

	FUNC2(&data->lock);
	err = FUNC4(data, false,
		(RPR0521_MODE_PXS_MASK | RPR0521_MODE_ALS_MASK));
	FUNC3(&data->lock);
	if (err)
		FUNC0(&data->client->dev, "_buffer_postdisable fail\n");

	return err;
}