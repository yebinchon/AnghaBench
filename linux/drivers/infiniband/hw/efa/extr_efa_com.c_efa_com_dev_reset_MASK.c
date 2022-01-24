#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int completion_timeout; } ;
struct efa_com_dev {TYPE_1__ aq; int /*<<< orphan*/  efa_dev; scalar_t__ reg_bar; } ;
typedef  enum efa_regs_reset_reason_types { ____Placeholder_efa_regs_reset_reason_types } efa_regs_reset_reason_types ;

/* Variables and functions */
 int ADMIN_CMD_TIMEOUT_US ; 
 int EFA_REGS_CAPS_ADMIN_CMD_TO_MASK ; 
 int EFA_REGS_CAPS_ADMIN_CMD_TO_SHIFT ; 
 int /*<<< orphan*/  EFA_REGS_CAPS_OFF ; 
 int EFA_REGS_CAPS_RESET_TIMEOUT_MASK ; 
 int EFA_REGS_CAPS_RESET_TIMEOUT_SHIFT ; 
 int EFA_REGS_DEV_CTL_DEV_RESET_MASK ; 
 scalar_t__ EFA_REGS_DEV_CTL_OFF ; 
 int EFA_REGS_DEV_CTL_RESET_REASON_MASK ; 
 int EFA_REGS_DEV_CTL_RESET_REASON_SHIFT ; 
 int /*<<< orphan*/  EFA_REGS_DEV_STS_OFF ; 
 int EFA_REGS_DEV_STS_READY_MASK ; 
 int /*<<< orphan*/  EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct efa_com_dev*) ; 
 int FUNC1 (struct efa_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct efa_com_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

int FUNC5(struct efa_com_dev *edev,
		      enum efa_regs_reset_reason_types reset_reason)
{
	u32 stat, timeout, cap, reset_val;
	int err;

	stat = FUNC1(edev, EFA_REGS_DEV_STS_OFF);
	cap = FUNC1(edev, EFA_REGS_CAPS_OFF);

	if (!(stat & EFA_REGS_DEV_STS_READY_MASK)) {
		FUNC2(edev->efa_dev,
			  "Device isn't ready, can't reset device\n");
		return -EINVAL;
	}

	timeout = (cap & EFA_REGS_CAPS_RESET_TIMEOUT_MASK) >>
		  EFA_REGS_CAPS_RESET_TIMEOUT_SHIFT;
	if (!timeout) {
		FUNC2(edev->efa_dev, "Invalid timeout value\n");
		return -EINVAL;
	}

	/* start reset */
	reset_val = EFA_REGS_DEV_CTL_DEV_RESET_MASK;
	reset_val |= (reset_reason << EFA_REGS_DEV_CTL_RESET_REASON_SHIFT) &
		     EFA_REGS_DEV_CTL_RESET_REASON_MASK;
	FUNC4(reset_val, edev->reg_bar + EFA_REGS_DEV_CTL_OFF);

	/* reset clears the mmio readless address, restore it */
	FUNC0(edev);

	err = FUNC3(edev, timeout,
				   EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK);
	if (err) {
		FUNC2(edev->efa_dev, "Reset indication didn't turn on\n");
		return err;
	}

	/* reset done */
	FUNC4(0, edev->reg_bar + EFA_REGS_DEV_CTL_OFF);
	err = FUNC3(edev, timeout, 0);
	if (err) {
		FUNC2(edev->efa_dev, "Reset indication didn't turn off\n");
		return err;
	}

	timeout = (cap & EFA_REGS_CAPS_ADMIN_CMD_TO_MASK) >>
		  EFA_REGS_CAPS_ADMIN_CMD_TO_SHIFT;
	if (timeout)
		/* the resolution of timeout reg is 100ms */
		edev->aq.completion_timeout = timeout * 100000;
	else
		edev->aq.completion_timeout = ADMIN_CMD_TIMEOUT_US;

	return 0;
}