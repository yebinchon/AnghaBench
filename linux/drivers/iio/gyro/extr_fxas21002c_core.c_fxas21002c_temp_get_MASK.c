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
struct fxas21002c_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * regmap_fields; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t F_TEMP ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct fxas21002c_data*) ; 
 int FUNC2 (struct fxas21002c_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned int,int) ; 

__attribute__((used)) static int FUNC8(struct fxas21002c_data *data, int *val)
{
	struct device *dev = FUNC6(data->regmap);
	unsigned int temp;
	int ret;

	FUNC3(&data->lock);
	ret = FUNC1(data);
	if (ret < 0)
		goto data_unlock;

	ret = FUNC5(data->regmap_fields[F_TEMP], &temp);
	if (ret < 0) {
		FUNC0(dev, "failed to read temp: %d\n", ret);
		goto data_unlock;
	}

	*val = FUNC7(temp, 7);

	ret = FUNC2(data);
	if (ret < 0)
		goto data_unlock;

	ret = IIO_VAL_INT;

data_unlock:
	FUNC4(&data->lock);

	return ret;
}