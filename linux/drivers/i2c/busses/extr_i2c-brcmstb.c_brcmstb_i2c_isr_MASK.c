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
struct brcmstb_i2c_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BSC_CTL_REG_INT_EN_MASK ; 
 int /*<<< orphan*/  INT_DISABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctl_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  iic_enable ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *devid)
{
	struct brcmstb_i2c_dev *dev = devid;
	u32 status_bsc_ctl = FUNC1(dev, ctl_reg);
	u32 status_iic_intrp = FUNC1(dev, iic_enable);

	FUNC3(dev->device, "isr CTL_REG %x IIC_EN %x\n",
		status_bsc_ctl, status_iic_intrp);

	if (!(status_bsc_ctl & BSC_CTL_REG_INT_EN_MASK))
		return IRQ_NONE;

	FUNC0(dev, INT_DISABLE);
	FUNC2(&dev->done);

	FUNC3(dev->device, "isr handled");
	return IRQ_HANDLED;
}