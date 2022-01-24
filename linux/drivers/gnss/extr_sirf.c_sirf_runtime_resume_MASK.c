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
struct sirf_data {int /*<<< orphan*/  lna; int /*<<< orphan*/  vcc; scalar_t__ on_off; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sirf_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sirf_data*,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct sirf_data *data = FUNC0(dev);
	int ret;

	ret = FUNC2(data->lna);
	if (ret)
		return ret;

	if (data->on_off)
		ret = FUNC3(data, true);
	else
		ret = FUNC2(data->vcc);

	if (ret)
		goto err_disable_lna;

	return 0;

err_disable_lna:
	FUNC1(data->lna);

	return ret;
}