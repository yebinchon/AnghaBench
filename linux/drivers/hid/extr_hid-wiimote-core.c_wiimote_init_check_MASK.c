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
struct TYPE_2__ {int flags; scalar_t__ exttype; scalar_t__ mp; int /*<<< orphan*/  lock; } ;
struct wiimote_data {int /*<<< orphan*/  hdev; TYPE_1__ state; } ;
typedef  scalar_t__ __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ WIIMOTE_EXT_NONE ; 
 scalar_t__ WIIMOTE_MP_NONE ; 
 scalar_t__ WIIMOTE_MP_SINGLE ; 
 scalar_t__ WIIMOTE_MP_UNKNOWN ; 
 int WIIPROTO_FLAG_BUILTIN_MP ; 
 int WIIPROTO_FLAG_EXT_ACTIVE ; 
 int WIIPROTO_FLAG_EXT_PLUGGED ; 
 int WIIPROTO_FLAG_MP_ACTIVE ; 
 int WIIPROTO_FLAG_MP_PLUGGED ; 
 int WIIPROTO_FLAG_MP_USED ; 
 int WIIPROTO_FLAG_NO_MP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*) ; 
 scalar_t__ FUNC4 (struct wiimote_data*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_data*) ; 

__attribute__((used)) static bool FUNC8(struct wiimote_data *wdata)
{
	__u32 flags;
	__u8 type, data[6];
	bool ret, poll_mp;

	FUNC1(&wdata->state.lock);
	flags = wdata->state.flags;
	FUNC2(&wdata->state.lock);

	FUNC3(wdata);

	/* If MP is used and active, but the extension is not, we expect:
	 *   read_mp_mapped() == WIIMOTE_MP_SINGLE
	 *   state.flags == !EXT_ACTIVE && !MP_PLUGGED && MP_ACTIVE
	 * We do not check EXT_PLUGGED because it might change during
	 * initialization of MP without extensions.
	 *  - If MP is unplugged/replugged, read_mp_mapped() fails
	 *  - If EXT is plugged, MP_PLUGGED will get set */
	if (wdata->state.exttype == WIIMOTE_EXT_NONE &&
	    wdata->state.mp > 0 && (flags & WIIPROTO_FLAG_MP_USED)) {
		type = FUNC5(wdata);
		ret = type == WIIMOTE_MP_SINGLE;

		FUNC1(&wdata->state.lock);
		ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
		ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_MP_PLUGGED);
		ret = ret && (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
		FUNC2(&wdata->state.lock);

		if (!ret)
			FUNC0(wdata->hdev, "state left: !EXT && MP\n");

		/* while MP is mapped, we get EXT_PLUGGED events */
		poll_mp = false;

		goto out_release;
	}

	/* If MP is unused, but the extension port is used, we expect:
	 *   read_ext == state.exttype
	 *   state.flags == !MP_ACTIVE && EXT_ACTIVE
	 * - If MP is plugged/unplugged, our timer detects it
	 * - If EXT is unplugged/replugged, EXT_ACTIVE will become unset */
	if (!(flags & WIIPROTO_FLAG_MP_USED) &&
	    wdata->state.exttype != WIIMOTE_EXT_NONE) {
		type = FUNC4(wdata, data);
		ret = type == wdata->state.exttype;

		FUNC1(&wdata->state.lock);
		ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
		ret = ret && (wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
		FUNC2(&wdata->state.lock);

		if (!ret)
			FUNC0(wdata->hdev, "state left: EXT && !MP\n");

		/* poll MP for hotplug events */
		poll_mp = true;

		goto out_release;
	}

	/* If neither MP nor an extension are used, we expect:
	 *   read_ext() == WIIMOTE_EXT_NONE
	 *   state.flags == !MP_ACTIVE && !EXT_ACTIVE && !EXT_PLUGGED
	 * No need to perform any action in this case as everything is
	 * disabled already.
	 * - If MP is plugged/unplugged, our timer detects it
	 * - If EXT is plugged, EXT_PLUGGED will be set */
	if (!(flags & WIIPROTO_FLAG_MP_USED) &&
	    wdata->state.exttype == WIIMOTE_EXT_NONE) {
		type = FUNC4(wdata, data);
		ret = type == wdata->state.exttype;

		FUNC1(&wdata->state.lock);
		ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
		ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
		ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED);
		FUNC2(&wdata->state.lock);

		if (!ret)
			FUNC0(wdata->hdev, "state left: !EXT && !MP\n");

		/* poll MP for hotplug events */
		poll_mp = true;

		goto out_release;
	}

	/* The trickiest part is if both EXT and MP are active. We cannot read
	 * the EXT ID, anymore, because MP is mapped over it. However, we use
	 * a handy trick here:
	 *   - EXT_ACTIVE is unset whenever !MP_PLUGGED is sent
	 * MP_PLUGGED might be re-sent again before we are scheduled, but
	 * EXT_ACTIVE will stay unset.
	 * So it is enough to check for mp_mapped() and MP_ACTIVE and
	 * EXT_ACTIVE. EXT_PLUGGED is a sanity check. */
	if (wdata->state.exttype != WIIMOTE_EXT_NONE &&
	    wdata->state.mp > 0 && (flags & WIIPROTO_FLAG_MP_USED)) {
		type = FUNC5(wdata);
		ret = type != WIIMOTE_MP_NONE;
		ret = ret && type != WIIMOTE_MP_UNKNOWN;
		ret = ret && type != WIIMOTE_MP_SINGLE;

		FUNC1(&wdata->state.lock);
		ret = ret && (wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED);
		ret = ret && (wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
		ret = ret && (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
		FUNC2(&wdata->state.lock);

		if (!ret)
			FUNC0(wdata->hdev, "state left: EXT && MP\n");

		/* while MP is mapped, we get EXT_PLUGGED events */
		poll_mp = false;

		goto out_release;
	}

	/* unknown state */
	ret = false;

out_release:
	FUNC6(wdata);

	/* only poll for MP if requested and if state didn't change */
	if (ret && poll_mp && !(flags & WIIPROTO_FLAG_BUILTIN_MP) &&
	    !(flags & WIIPROTO_FLAG_NO_MP))
		FUNC7(wdata);

	return ret;
}