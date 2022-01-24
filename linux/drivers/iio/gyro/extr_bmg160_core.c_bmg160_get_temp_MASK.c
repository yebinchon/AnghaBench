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
struct device {int dummy; } ;
struct bmg160_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMG160_REG_TEMP ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct bmg160_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct bmg160_data *data, int *val)
{
	struct device *dev = FUNC4(data->regmap);
	int ret;
	unsigned int raw_val;

	FUNC2(&data->mutex);
	ret = FUNC0(data, true);
	if (ret < 0) {
		FUNC3(&data->mutex);
		return ret;
	}

	ret = FUNC5(data->regmap, BMG160_REG_TEMP, &raw_val);
	if (ret < 0) {
		FUNC1(dev, "Error reading reg_temp\n");
		FUNC0(data, false);
		FUNC3(&data->mutex);
		return ret;
	}

	*val = FUNC6(raw_val, 7);
	ret = FUNC0(data, false);
	FUNC3(&data->mutex);
	if (ret < 0)
		return ret;

	return IIO_VAL_INT;
}