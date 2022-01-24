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
struct TYPE_2__ {int flags; size_t exttype; int mp; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; int /*<<< orphan*/  hdev; int /*<<< orphan*/  timer; } ;
typedef  size_t __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 int HZ ; 
 size_t WIIMOTE_EXT_NONE ; 
 size_t WIIMOTE_EXT_UNKNOWN ; 
 int WIIPROTO_FLAG_BUILTIN_MP ; 
 int WIIPROTO_FLAG_EXT_ACTIVE ; 
 int WIIPROTO_FLAG_EXT_PLUGGED ; 
 int WIIPROTO_FLAG_MP_ACTIVE ; 
 int WIIPROTO_FLAG_MP_PLUGGED ; 
 int WIIPROTO_FLAG_MP_USED ; 
 int WIIPROTO_FLAG_NO_MP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_data*,size_t) ; 
 size_t FUNC10 (struct wiimote_data*,size_t*) ; 
 int FUNC11 (struct wiimote_data*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct wiimote_data*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct wiimote_data*) ; 
 int /*<<< orphan*/ * wiimote_exttype_names ; 
 int /*<<< orphan*/  FUNC15 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct wiimote_data*) ; 

__attribute__((used)) static void FUNC18(struct wiimote_data *wdata)
{
	__u8 exttype, extdata[6], mpdata[6];
	__u32 flags;
	bool mp;

	FUNC1(wdata->hdev, "detect extensions..\n");

	FUNC6(wdata);

	FUNC4(&wdata->state.lock);

	/* get state snapshot that we will then work on */
	flags = wdata->state.flags;

	/* disable event forwarding temporarily */
	wdata->state.flags &= ~WIIPROTO_FLAG_EXT_ACTIVE;
	wdata->state.flags &= ~WIIPROTO_FLAG_MP_ACTIVE;

	FUNC5(&wdata->state.lock);

	/* init extension and MP (deactivates current extension or MP) */
	FUNC7(wdata);
	if (flags & WIIPROTO_FLAG_NO_MP) {
		mp = false;
	} else {
		FUNC8(wdata);
		mp = FUNC11(wdata, mpdata);
	}
	exttype = FUNC10(wdata, extdata);

	FUNC12(wdata);

	/* load/unload extension module if it changed */
	if (exttype != wdata->state.exttype) {
		/* unload previous extension */
		FUNC14(wdata);

		if (exttype == WIIMOTE_EXT_UNKNOWN) {
			FUNC2(wdata->hdev, "cannot detect extension; %6phC\n",
				 extdata);
		} else if (exttype == WIIMOTE_EXT_NONE) {
			FUNC4(&wdata->state.lock);
			wdata->state.exttype = WIIMOTE_EXT_NONE;
			FUNC5(&wdata->state.lock);
		} else {
			FUNC2(wdata->hdev, "detected extension: %s\n",
				 wiimote_exttype_names[exttype]);
			/* try loading new extension */
			FUNC13(wdata, exttype);
		}
	}

	/* load/unload MP module if it changed */
	if (mp) {
		if (!wdata->state.mp) {
			FUNC2(wdata->hdev, "detected extension: Nintendo Wii Motion Plus\n");
			FUNC15(wdata);
		}
	} else if (wdata->state.mp) {
		FUNC16(wdata);
	}

	/* if MP is not used, do not map or activate it */
	if (!(flags & WIIPROTO_FLAG_MP_USED))
		mp = false;

	/* map MP into main extension registers if used */
	if (mp) {
		FUNC6(wdata);
		FUNC9(wdata, exttype);
		FUNC12(wdata);

		/* delete MP hotplug timer */
		FUNC0(&wdata->timer);
	} else {
		/* reschedule MP hotplug timer */
		if (!(flags & WIIPROTO_FLAG_BUILTIN_MP) &&
		    !(flags & WIIPROTO_FLAG_NO_MP))
			FUNC3(&wdata->timer, jiffies + HZ * 4);
	}

	FUNC4(&wdata->state.lock);

	/* enable data forwarding again and set expected hotplug state */
	if (mp) {
		wdata->state.flags |= WIIPROTO_FLAG_MP_ACTIVE;
		if (wdata->state.exttype == WIIMOTE_EXT_NONE) {
			wdata->state.flags &= ~WIIPROTO_FLAG_EXT_PLUGGED;
			wdata->state.flags &= ~WIIPROTO_FLAG_MP_PLUGGED;
		} else {
			wdata->state.flags &= ~WIIPROTO_FLAG_EXT_PLUGGED;
			wdata->state.flags |= WIIPROTO_FLAG_MP_PLUGGED;
			wdata->state.flags |= WIIPROTO_FLAG_EXT_ACTIVE;
		}
	} else if (wdata->state.exttype != WIIMOTE_EXT_NONE) {
		wdata->state.flags |= WIIPROTO_FLAG_EXT_ACTIVE;
	}

	/* request status report for hotplug state updates */
	FUNC17(wdata);

	FUNC5(&wdata->state.lock);

	FUNC1(wdata->hdev, "detected extensions: MP: %d EXT: %d\n",
		wdata->state.mp, wdata->state.exttype);
}