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
struct TYPE_2__ {int flags; int cmd_battery; } ;
struct wiimote_data {TYPE_1__ state; int /*<<< orphan*/  hdev; } ;
typedef  int __u8 ;

/* Variables and functions */
 int WIIPROTO_FLAG_EXT_ACTIVE ; 
 int WIIPROTO_FLAG_EXT_PLUGGED ; 
 int WIIPROTO_FLAG_MP_ACTIVE ; 
 int WIIPROTO_FLAG_MP_PLUGGED ; 
 int /*<<< orphan*/  WIIPROTO_REQ_SREQ ; 
 int /*<<< orphan*/  FUNC0 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_data*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*) ; 
 scalar_t__ FUNC4 (struct wiimote_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wiimote_data *wdata, const __u8 *payload)
{
	FUNC1(wdata, payload);

	/* update extension status */
	if (payload[2] & 0x02) {
		if (!(wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED)) {
			FUNC2(wdata->hdev, "EXT hotplug: 1\n");
			wdata->state.flags |= WIIPROTO_FLAG_EXT_PLUGGED;
			FUNC0(wdata);
		}
	} else {
		if (wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED) {
			FUNC2(wdata->hdev, "EXT hotplug: 0\n");
			wdata->state.flags &= ~WIIPROTO_FLAG_EXT_PLUGGED;
			wdata->state.flags &= ~WIIPROTO_FLAG_MP_PLUGGED;
			wdata->state.flags &= ~WIIPROTO_FLAG_EXT_ACTIVE;
			wdata->state.flags &= ~WIIPROTO_FLAG_MP_ACTIVE;
			FUNC0(wdata);
		}
	}

	wdata->state.cmd_battery = payload[5];
	if (FUNC4(wdata, WIIPROTO_REQ_SREQ, 0))
		FUNC3(wdata);
}