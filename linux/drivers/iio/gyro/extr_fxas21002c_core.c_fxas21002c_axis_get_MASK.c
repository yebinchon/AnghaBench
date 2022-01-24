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
struct fxas21002c_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  axis_be ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int FUNC3 (struct fxas21002c_data*) ; 
 int FUNC4 (struct fxas21002c_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct device* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct fxas21002c_data *data,
			       int index, int *val)
{
	struct device *dev = FUNC8(data->regmap);
	__be16 axis_be;
	int ret;

	FUNC5(&data->lock);
	ret = FUNC3(data);
	if (ret < 0)
		goto data_unlock;

	ret = FUNC7(data->regmap, FUNC0(index),
			       &axis_be, sizeof(axis_be));
	if (ret < 0) {
		FUNC2(dev, "failed to read axis: %d: %d\n", index, ret);
		goto data_unlock;
	}

	*val = FUNC9(FUNC1(axis_be), 15);

	ret = FUNC4(data);
	if (ret < 0)
		goto data_unlock;

	ret = IIO_VAL_INT;

data_unlock:
	FUNC6(&data->lock);

	return ret;
}