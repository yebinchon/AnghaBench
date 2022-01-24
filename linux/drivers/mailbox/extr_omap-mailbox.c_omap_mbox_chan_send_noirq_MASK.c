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
typedef  int /*<<< orphan*/  u32 ;
struct omap_mbox {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IRQ_RX ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_mbox*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct omap_mbox *mbox, u32 msg)
{
	int ret = -EBUSY;

	if (!FUNC3(mbox)) {
		FUNC1(mbox, IRQ_RX);
		FUNC5(mbox, msg);
		ret = 0;
		FUNC0(mbox, IRQ_RX);

		/* we must read and ack the interrupt directly from here */
		FUNC4(mbox);
		FUNC2(mbox, IRQ_RX);
	}

	return ret;
}