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
struct sirf_data {int /*<<< orphan*/  vcc; scalar_t__ on_off; int /*<<< orphan*/  lna; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct sirf_data* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sirf_data*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct sirf_data *data = FUNC1(dev);
	int ret2;
	int ret;

	if (data->on_off)
		ret = FUNC4(data, false);
	else
		ret = FUNC2(data->vcc);

	if (ret)
		return ret;

	ret = FUNC2(data->lna);
	if (ret)
		goto err_reenable;

	return 0;

err_reenable:
	if (data->on_off)
		ret2 = FUNC4(data, true);
	else
		ret2 = FUNC3(data->vcc);

	if (ret2)
		FUNC0(dev,
			"failed to reenable power on failed suspend: %d\n",
			ret2);

	return ret;
}