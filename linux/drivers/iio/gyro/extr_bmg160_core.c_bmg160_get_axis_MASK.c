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
typedef  int /*<<< orphan*/  raw_val ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IIO_VAL_INT ; 
 int FUNC1 (struct bmg160_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct bmg160_data *data, int axis, int *val)
{
	struct device *dev = FUNC7(data->regmap);
	int ret;
	__le16 raw_val;

	FUNC4(&data->mutex);
	ret = FUNC1(data, true);
	if (ret < 0) {
		FUNC5(&data->mutex);
		return ret;
	}

	ret = FUNC6(data->regmap, FUNC0(axis), &raw_val,
			       sizeof(raw_val));
	if (ret < 0) {
		FUNC2(dev, "Error reading axis %d\n", axis);
		FUNC1(data, false);
		FUNC5(&data->mutex);
		return ret;
	}

	*val = FUNC8(FUNC3(raw_val), 15);
	ret = FUNC1(data, false);
	FUNC5(&data->mutex);
	if (ret < 0)
		return ret;

	return IIO_VAL_INT;
}