#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_4__ {int (* init ) (TYPE_2__*) ;} ;
struct inf_hw {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  irqcnt; int /*<<< orphan*/  lock; TYPE_2__ ipac; TYPE_1__* ci; } ;
struct TYPE_3__ {int /*<<< orphan*/  irqfunc; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC9(struct inf_hw *hw)
{
	int	ret, cnt = 3;
	u_long	flags;

	if (!hw->ci->irqfunc)
		return -EINVAL;
	ret = FUNC4(hw->irq, hw->ci->irqfunc, IRQF_SHARED, hw->name, hw);
	if (ret) {
		FUNC2("%s: couldn't get interrupt %d\n", hw->name, hw->irq);
		return ret;
	}
	while (cnt--) {
		FUNC6(&hw->lock, flags);
		FUNC5(hw);
		ret = hw->ipac.init(&hw->ipac);
		if (ret) {
			FUNC7(&hw->lock, flags);
			FUNC2("%s: ISAC init failed with %d\n",
				hw->name, ret);
			break;
		}
		FUNC7(&hw->lock, flags);
		FUNC1(10);
		if (debug & DEBUG_HW)
			FUNC3("%s: IRQ %d count %d\n", hw->name,
				  hw->irq, hw->irqcnt);
		if (!hw->irqcnt) {
			FUNC2("%s: IRQ(%d) got no requests during init %d\n",
				hw->name, hw->irq, 3 - cnt);
		} else
			return 0;
	}
	FUNC0(hw->irq, hw);
	return -EIO;
}