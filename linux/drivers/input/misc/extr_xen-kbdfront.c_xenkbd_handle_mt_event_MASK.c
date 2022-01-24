#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_4__ {int /*<<< orphan*/  abs_y; int /*<<< orphan*/  abs_x; } ;
struct TYPE_6__ {int /*<<< orphan*/  orientation; TYPE_2__ shape; TYPE_1__ pos; } ;
struct xenkbd_mtouch {scalar_t__ contact_id; int event_type; TYPE_3__ u; } ;
struct xenkbd_info {scalar_t__ mtouch_cur_contact_id; int /*<<< orphan*/  mtouch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
#define  XENKBD_MT_EV_DOWN 133 
#define  XENKBD_MT_EV_MOTION 132 
#define  XENKBD_MT_EV_ORIENT 131 
#define  XENKBD_MT_EV_SHAPE 130 
#define  XENKBD_MT_EV_SYN 129 
#define  XENKBD_MT_EV_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct xenkbd_info *info,
				   struct xenkbd_mtouch *mtouch)
{
	if (FUNC5(!info->mtouch))
		return;

	if (mtouch->contact_id != info->mtouch_cur_contact_id) {
		info->mtouch_cur_contact_id = mtouch->contact_id;
		FUNC1(info->mtouch, mtouch->contact_id);
	}

	switch (mtouch->event_type) {
	case XENKBD_MT_EV_DOWN:
		FUNC0(info->mtouch, MT_TOOL_FINGER, true);
		/* fall through */

	case XENKBD_MT_EV_MOTION:
		FUNC3(info->mtouch, ABS_MT_POSITION_X,
				 mtouch->u.pos.abs_x);
		FUNC3(info->mtouch, ABS_MT_POSITION_Y,
				 mtouch->u.pos.abs_y);
		break;

	case XENKBD_MT_EV_SHAPE:
		FUNC3(info->mtouch, ABS_MT_TOUCH_MAJOR,
				 mtouch->u.shape.major);
		FUNC3(info->mtouch, ABS_MT_TOUCH_MINOR,
				 mtouch->u.shape.minor);
		break;

	case XENKBD_MT_EV_ORIENT:
		FUNC3(info->mtouch, ABS_MT_ORIENTATION,
				 mtouch->u.orientation);
		break;

	case XENKBD_MT_EV_UP:
		FUNC0(info->mtouch, MT_TOOL_FINGER, false);
		break;

	case XENKBD_MT_EV_SYN:
		FUNC2(info->mtouch);
		FUNC4(info->mtouch);
		break;
	}
}