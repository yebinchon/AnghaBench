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
struct omap_i2c_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct omap_i2c_dev*,int) ; 
 int FUNC1 (struct omap_i2c_dev*) ; 

__attribute__((used)) static irqreturn_t
FUNC2(int this_irq, void *dev_id)
{
	int ret;
	struct omap_i2c_dev *omap = dev_id;

	ret = FUNC1(omap);
	if (ret != -EAGAIN)
		FUNC0(omap, ret);

	return IRQ_HANDLED;
}