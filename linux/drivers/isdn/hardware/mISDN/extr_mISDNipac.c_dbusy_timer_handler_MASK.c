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
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ tx_idx; int /*<<< orphan*/  Flags; } ;
struct isac_hw {int /*<<< orphan*/  hwlock; int /*<<< orphan*/  name; TYPE_1__ dch; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_BUSY_TIMER ; 
 int /*<<< orphan*/  FLG_L1_BUSY ; 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_RBCH ; 
 int ISAC_RBCH_XAC ; 
 int /*<<< orphan*/  ISAC_STAR ; 
 int FUNC0 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isac_hw*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ dch ; 
 struct isac_hw* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct isac_hw* isac ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct timer_list *t)
{
	struct isac_hw *isac = FUNC2(isac, t, dch.timer);
	int rbch, star;
	u_long flags;

	if (FUNC9(FLG_BUSY_TIMER, &isac->dch.Flags)) {
		FUNC5(isac->hwlock, flags);
		rbch = FUNC0(isac, ISAC_RBCH);
		star = FUNC0(isac, ISAC_STAR);
		FUNC3("%s: D-Channel Busy RBCH %02x STAR %02x\n",
			 isac->name, rbch, star);
		if (rbch & ISAC_RBCH_XAC) /* D-Channel Busy */
			FUNC8(FLG_L1_BUSY, &isac->dch.Flags);
		else {
			/* discard frame; reset transceiver */
			FUNC7(FLG_BUSY_TIMER, &isac->dch.Flags);
			if (isac->dch.tx_idx)
				isac->dch.tx_idx = 0;
			else
				FUNC4("%s: ISAC D-Channel Busy no tx_idx\n",
					isac->name);
			/* Transmitter reset */
			FUNC1(isac, ISAC_CMDR, 0x01);
		}
		FUNC6(isac->hwlock, flags);
	}
}