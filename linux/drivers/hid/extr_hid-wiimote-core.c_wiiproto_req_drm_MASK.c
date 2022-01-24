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
struct TYPE_2__ {int flags; scalar_t__ drm; } ;
struct wiimote_data {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int WIIPROTO_FLAG_DRM_LOCKED ; 
 scalar_t__ WIIPROTO_REQ_DRM ; 
 scalar_t__ WIIPROTO_REQ_NULL ; 
 scalar_t__ FUNC0 (struct wiimote_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiimote_data*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wiimote_data*,scalar_t__*) ; 

void FUNC3(struct wiimote_data *wdata, __u8 drm)
{
	__u8 cmd[3];

	if (wdata->state.flags & WIIPROTO_FLAG_DRM_LOCKED)
		drm = wdata->state.drm;
	else if (drm == WIIPROTO_REQ_NULL)
		drm = FUNC0(wdata);

	cmd[0] = WIIPROTO_REQ_DRM;
	cmd[1] = 0;
	cmd[2] = drm;

	wdata->state.drm = drm;
	FUNC2(wdata, &cmd[1]);
	FUNC1(wdata, cmd, sizeof(cmd));
}