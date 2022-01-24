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
struct bcm_iproc_i2c_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int ISR_MASK ; 
 int ISR_MASK_SLAVE ; 
 int /*<<< orphan*/  IS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_iproc_i2c_dev*,int) ; 
 int FUNC1 (struct bcm_iproc_i2c_dev*,int) ; 
 int FUNC2 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct bcm_iproc_i2c_dev *iproc_i2c = data;
	u32 status = FUNC2(iproc_i2c, IS_OFFSET);
	bool ret;
	u32 sl_status = status & ISR_MASK_SLAVE;

	if (sl_status) {
		ret = FUNC1(iproc_i2c, sl_status);
		if (ret)
			return IRQ_HANDLED;
		else
			return IRQ_NONE;
	}

	status &= ISR_MASK;
	if (!status)
		return IRQ_NONE;

	/* process all master based events */
	FUNC0(iproc_i2c, status);
	FUNC3(iproc_i2c, IS_OFFSET, status);

	return IRQ_HANDLED;
}