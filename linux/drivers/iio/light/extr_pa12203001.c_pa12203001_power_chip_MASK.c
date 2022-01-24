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
typedef  int /*<<< orphan*/  u8 ;
struct pa12203001_data {int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 struct pa12203001_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pa12203001_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pa12203001_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev, u8 state)
{
	struct pa12203001_data *data = FUNC0(indio_dev);
	int ret;

	FUNC1(&data->lock);
	ret = FUNC3(data, state);
	if (ret < 0)
		goto out;

	ret = FUNC4(data, state);

out:
	FUNC2(&data->lock);
	return ret;
}