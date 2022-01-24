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
struct TYPE_2__ {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  devtype; } ;
struct wiimote_data {TYPE_1__ state; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  WIIMOTE_DEV_UNKNOWN ; 
 int /*<<< orphan*/  WIIMOTE_EXT_NONE ; 
 int WIIPROTO_FLAG_BUILTIN_MP ; 
 int WIIPROTO_FLAG_EXT_PLUGGED ; 
 int WIIPROTO_FLAG_NO_MP ; 
 int /*<<< orphan*/  WIIPROTO_REQ_SREQ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiimote_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct wiimote_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wiimote_data*) ; 

__attribute__((used)) static void FUNC11(struct wiimote_data *wdata)
{
	__u8 exttype = WIIMOTE_EXT_NONE, extdata[6];
	bool ext;
	int ret;

	FUNC3(wdata);

	FUNC1(&wdata->state.lock);
	wdata->state.devtype = WIIMOTE_DEV_UNKNOWN;
	FUNC7(wdata, WIIPROTO_REQ_SREQ, 0);
	FUNC10(wdata);
	FUNC2(&wdata->state.lock);

	ret = FUNC8(wdata);
	if (ret)
		goto out_release;

	FUNC1(&wdata->state.lock);
	ext = wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED;
	FUNC2(&wdata->state.lock);

	if (!ext)
		goto out_release;

	FUNC4(wdata);
	exttype = FUNC5(wdata, extdata);

out_release:
	FUNC6(wdata);
	FUNC9(wdata, exttype);

	/* schedule MP timer */
	FUNC1(&wdata->state.lock);
	if (!(wdata->state.flags & WIIPROTO_FLAG_BUILTIN_MP) &&
	    !(wdata->state.flags & WIIPROTO_FLAG_NO_MP))
		FUNC0(&wdata->timer, jiffies + HZ * 4);
	FUNC2(&wdata->state.lock);
}