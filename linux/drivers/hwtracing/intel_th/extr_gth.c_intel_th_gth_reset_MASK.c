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
struct gth_device {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CTS_ACTION_CONTROL_TRIGGER ; 
 int CTS_EVENT_ENABLE_IF_ANYTHING ; 
 int /*<<< orphan*/  CTS_STATE_IDLE ; 
 int EBUSY ; 
 scalar_t__ GTH_NONE ; 
 scalar_t__ REG_CTS_C0S0_ACT ; 
 scalar_t__ REG_CTS_C0S0_EN ; 
 scalar_t__ REG_GTH_DESTOVR ; 
 scalar_t__ REG_GTH_SCR ; 
 scalar_t__ REG_GTH_SCR2 ; 
 scalar_t__ REG_GTH_SCRPD0 ; 
 scalar_t__ REG_GTH_SWDEST0 ; 
 int SCRPD_DEBUGGER_IN_USE ; 
 int SCRPD_STH_IS_ENABLED ; 
 int SCRPD_TRIGGER_IS_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct gth_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gth_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gth_device*,int,int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct gth_device *gth)
{
	u32 reg;
	int port, i;

	reg = FUNC5(gth->base + REG_GTH_SCRPD0);
	if (reg & SCRPD_DEBUGGER_IN_USE)
		return -EBUSY;

	/* Always save/restore STH and TU registers in S0ix entry/exit */
	reg |= SCRPD_STH_IS_ENABLED | SCRPD_TRIGGER_IS_ENABLED;
	FUNC6(reg, gth->base + REG_GTH_SCRPD0);

	/* output ports */
	for (port = 0; port < 8; port++) {
		if (FUNC2(gth, port, FUNC1(port)) ==
		    GTH_NONE)
			continue;

		FUNC3(gth, port, 0);
		FUNC4(gth, port, 16);
	}
	/* disable overrides */
	FUNC6(0, gth->base + REG_GTH_DESTOVR);

	/* masters swdest_0~31 and gswdest */
	for (i = 0; i < 33; i++)
		FUNC6(0, gth->base + REG_GTH_SWDEST0 + i * 4);

	/* sources */
	FUNC6(0, gth->base + REG_GTH_SCR);
	FUNC6(0xfc, gth->base + REG_GTH_SCR2);

	/* setup CTS for single trigger */
	FUNC6(CTS_EVENT_ENABLE_IF_ANYTHING, gth->base + REG_CTS_C0S0_EN);
	FUNC6(FUNC0(CTS_STATE_IDLE) |
		  CTS_ACTION_CONTROL_TRIGGER, gth->base + REG_CTS_C0S0_ACT);

	return 0;
}