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
struct mrfld_extcon_data {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCOVE_CHGRCTRL0 ; 
 unsigned int BCOVE_CHGRCTRL0_SWCONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct mrfld_extcon_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct mrfld_extcon_data*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct mrfld_extcon_data *data, bool enable)
{
	unsigned int mask = BCOVE_CHGRCTRL0_SWCONTROL;
	struct device *dev = data->dev;
	int ret;

	if (enable)
		ret = FUNC2(data, BCOVE_CHGRCTRL0, mask);
	else
		ret = FUNC1(data, BCOVE_CHGRCTRL0, mask);
	if (ret)
		FUNC0(dev, "can't set SW control: %d\n", ret);
	return ret;
}