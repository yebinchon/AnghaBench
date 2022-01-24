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
struct idma64_chan {int /*<<< orphan*/  mask; } ;
struct idma64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_HI ; 
 int /*<<< orphan*/  CFG_LO ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int IDMA64C_CFGL_DST_BURST_ALIGN ; 
 int IDMA64C_CFGL_SRC_BURST_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFER ; 
 int /*<<< orphan*/  FUNC3 (struct idma64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idma64_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct idma64*) ; 

__attribute__((used)) static void FUNC6(struct idma64 *idma64, struct idma64_chan *idma64c)
{
	u32 cfghi = FUNC1(1) | FUNC0(0);
	u32 cfglo = 0;

	/* Set default burst alignment */
	cfglo |= IDMA64C_CFGL_DST_BURST_ALIGN | IDMA64C_CFGL_SRC_BURST_ALIGN;

	FUNC4(idma64c, CFG_LO, cfglo);
	FUNC4(idma64c, CFG_HI, cfghi);

	/* Enable interrupts */
	FUNC3(idma64, FUNC2(XFER), idma64c->mask);
	FUNC3(idma64, FUNC2(ERROR), idma64c->mask);

	/*
	 * Enforce the controller to be turned on.
	 *
	 * The iDMA is turned off in ->probe() and looses context during system
	 * suspend / resume cycle. That's why we have to enable it each time we
	 * use it.
	 */
	FUNC5(idma64);
}