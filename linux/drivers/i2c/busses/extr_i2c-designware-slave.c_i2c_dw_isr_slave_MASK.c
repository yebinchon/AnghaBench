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
struct dw_i2c_dev {int /*<<< orphan*/  cmd_complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_i2c_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int this_irq, void *dev_id)
{
	struct dw_i2c_dev *dev = dev_id;
	int ret;

	FUNC3(dev);
	ret = FUNC2(dev);
	if (ret > 0)
		FUNC1(&dev->cmd_complete);

	return FUNC0(ret);
}