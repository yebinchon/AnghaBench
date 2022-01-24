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
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {int (* init ) (TYPE_1__*) ;} ;
struct sfax_hw {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  irqcnt; int /*<<< orphan*/  lock; TYPE_1__ isac; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  FUNC0 (struct sfax_hw*,int /*<<< orphan*/ ,int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sfax_hw*) ; 
 int /*<<< orphan*/  speedfax_irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(struct sfax_hw *sf)
{
	int	ret, cnt = 3;
	u_long	flags;

	ret = FUNC6(sf->irq, speedfax_irq, IRQF_SHARED, sf->name, sf);
	if (ret) {
		FUNC4("%s: couldn't get interrupt %d\n", sf->name, sf->irq);
		return ret;
	}
	while (cnt--) {
		FUNC7(&sf->lock, flags);
		ret = sf->isac.init(&sf->isac);
		if (ret) {
			FUNC8(&sf->lock, flags);
			FUNC4("%s: ISAC init failed with %d\n",
				sf->name, ret);
			break;
		}
		FUNC1(sf);
		/* RESET Receiver and Transmitter */
		FUNC0(sf, ISAC_CMDR, 0x41);
		FUNC8(&sf->lock, flags);
		FUNC3(10);
		if (debug & DEBUG_HW)
			FUNC5("%s: IRQ %d count %d\n", sf->name,
				  sf->irq, sf->irqcnt);
		if (!sf->irqcnt) {
			FUNC4("%s: IRQ(%d) got no requests during init %d\n",
				sf->name, sf->irq, 3 - cnt);
		} else
			return 0;
	}
	FUNC2(sf->irq, sf);
	return -EIO;
}