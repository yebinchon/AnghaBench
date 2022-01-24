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
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct hfi1_pportdata *ppd, u32 frame,
				  const char *prefix)
{
	struct hfi1_devdata *dd = ppd->dd;
	u32 success;
	u32 state;
	u32 reason;
	u32 lanes;

	/*
	 * Decode frame:
	 *  [ 0: 0] - success
	 *  [ 3: 1] - state
	 *  [ 7: 4] - next state timeout
	 *  [15: 8] - reason code
	 *  [31:16] - lanes
	 */
	success = frame & 0x1;
	state = (frame >> 1) & 0x7;
	reason = (frame >> 8) & 0xff;
	lanes = (frame >> 16) & 0xffff;

	FUNC0(dd, "Last %s LNI state complete frame 0x%08x:\n",
		   prefix, frame);
	FUNC0(dd, "    last reported state state: %s (0x%x)\n",
		   FUNC2(state), state);
	FUNC0(dd, "    state successfully completed: %s\n",
		   success ? "yes" : "no");
	FUNC0(dd, "    fail reason 0x%x: %s\n",
		   reason, FUNC1(ppd, reason));
	FUNC0(dd, "    passing lane mask: 0x%x", lanes);
}