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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct efa_com_dev {int /*<<< orphan*/  efa_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_POLL_INTERVAL_MS ; 
 int /*<<< orphan*/  EFA_REGS_DEV_STS_OFF ; 
 scalar_t__ EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK ; 
 int ETIME ; 
 scalar_t__ FUNC0 (struct efa_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct efa_com_dev *edev, u32 timeout,
				u16 exp_state)
{
	u32 val, i;

	for (i = 0; i < timeout; i++) {
		val = FUNC0(edev, EFA_REGS_DEV_STS_OFF);

		if ((val & EFA_REGS_DEV_STS_RESET_IN_PROGRESS_MASK) ==
		    exp_state)
			return 0;

		FUNC1(edev->efa_dev, "Reset indication val %d\n", val);
		FUNC2(EFA_POLL_INTERVAL_MS);
	}

	return -ETIME;
}