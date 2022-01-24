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
struct adt7x10_data {int* temp; int hyst; } ;

/* Variables and functions */
 int /*<<< orphan*/ * ADT7X10_REG_TEMP ; 
 int /*<<< orphan*/  ADT7X10_T_HYST ; 
 int FUNC0 (int*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct adt7x10_data* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct adt7x10_data *data = FUNC4(dev);
	int ret;
	int i;

	for (i = 1; i < FUNC0(data->temp); i++) {
		ret = FUNC2(dev, ADT7X10_REG_TEMP[i]);
		if (ret < 0) {
			FUNC3(dev, "Failed to read value: reg %d, error %d\n",
				ADT7X10_REG_TEMP[i], ret);
			return ret;
		}
		data->temp[i] = ret;
	}

	ret = FUNC1(dev, ADT7X10_T_HYST);
	if (ret < 0) {
		FUNC3(dev, "Failed to read value: reg %d, error %d\n",
				ADT7X10_T_HYST, ret);
		return ret;
	}
	data->hyst = ret;

	return 0;
}