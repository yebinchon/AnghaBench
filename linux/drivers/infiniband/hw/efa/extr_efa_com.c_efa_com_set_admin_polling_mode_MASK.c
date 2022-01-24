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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct efa_com_dev {TYPE_1__ aq; scalar_t__ reg_bar; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_AQ_STATE_POLLING_BIT ; 
 int /*<<< orphan*/  EFA_REGS_ADMIN_INTR_MASK ; 
 scalar_t__ EFA_REGS_INTR_MASK_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct efa_com_dev *edev, bool polling)
{
	u32 mask_value = 0;

	if (polling)
		mask_value = EFA_REGS_ADMIN_INTR_MASK;

	FUNC2(mask_value, edev->reg_bar + EFA_REGS_INTR_MASK_OFF);
	if (polling)
		FUNC1(EFA_AQ_STATE_POLLING_BIT, &edev->aq.state);
	else
		FUNC0(EFA_AQ_STATE_POLLING_BIT, &edev->aq.state);
}