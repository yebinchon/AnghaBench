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
struct device {int dummy; } ;
struct caam_drv_private_jr {TYPE_1__* rregs; int /*<<< orphan*/  ridx; } ;
struct TYPE_2__ {int /*<<< orphan*/  rconfig_lo; int /*<<< orphan*/  jrcommand; int /*<<< orphan*/  jrintstatus; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  JRCFG_IMSK ; 
 int JRCR_RESET ; 
 int JRINT_ERR_HALT_COMPLETE ; 
 int JRINT_ERR_HALT_INPROGRESS ; 
 int JRINT_ERR_HALT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct caam_drv_private_jr* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct caam_drv_private_jr *jrp = FUNC3(dev);
	unsigned int timeout = 100000;

	/*
	 * mask interrupts since we are going to poll
	 * for reset completion status
	 */
	FUNC0(&jrp->rregs->rconfig_lo, 0, JRCFG_IMSK);

	/* initiate flush (required prior to reset) */
	FUNC5(&jrp->rregs->jrcommand, JRCR_RESET);
	while (((FUNC4(&jrp->rregs->jrintstatus) & JRINT_ERR_HALT_MASK) ==
		JRINT_ERR_HALT_INPROGRESS) && --timeout)
		FUNC1();

	if ((FUNC4(&jrp->rregs->jrintstatus) & JRINT_ERR_HALT_MASK) !=
	    JRINT_ERR_HALT_COMPLETE || timeout == 0) {
		FUNC2(dev, "failed to flush job ring %d\n", jrp->ridx);
		return -EIO;
	}

	/* initiate reset */
	timeout = 100000;
	FUNC5(&jrp->rregs->jrcommand, JRCR_RESET);
	while ((FUNC4(&jrp->rregs->jrcommand) & JRCR_RESET) && --timeout)
		FUNC1();

	if (timeout == 0) {
		FUNC2(dev, "failed to reset job ring %d\n", jrp->ridx);
		return -EIO;
	}

	/* unmask interrupts */
	FUNC0(&jrp->rregs->rconfig_lo, JRCFG_IMSK, 0);

	return 0;
}