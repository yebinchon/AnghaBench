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
typedef  int u32 ;
struct dw_i2c_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DW_IC_ENABLE ; 
 int DW_IC_INTR_ACTIVITY ; 
 int /*<<< orphan*/  DW_IC_RAW_INTR_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct dw_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_i2c_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int this_irq, void *dev_id)
{
	struct dw_i2c_dev *dev = dev_id;
	u32 stat, enabled;

	enabled = FUNC1(dev, DW_IC_ENABLE);
	stat = FUNC1(dev, DW_IC_RAW_INTR_STAT);
	FUNC0(dev->dev, "enabled=%#x stat=%#x\n", enabled, stat);
	if (!enabled || !(stat & ~DW_IC_INTR_ACTIVITY))
		return IRQ_NONE;

	FUNC2(dev);

	return IRQ_HANDLED;
}