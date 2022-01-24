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
union xenkbd_in_event {int type; int /*<<< orphan*/  mtouch; int /*<<< orphan*/  pos; int /*<<< orphan*/  key; int /*<<< orphan*/  motion; } ;
struct xenkbd_info {int dummy; } ;

/* Variables and functions */
#define  XENKBD_TYPE_KEY 131 
#define  XENKBD_TYPE_MOTION 130 
#define  XENKBD_TYPE_MTOUCH 129 
#define  XENKBD_TYPE_POS 128 
 int /*<<< orphan*/  FUNC0 (struct xenkbd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xenkbd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xenkbd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xenkbd_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct xenkbd_info *info,
				union xenkbd_in_event *event)
{
	switch (event->type) {
	case XENKBD_TYPE_MOTION:
		FUNC1(info, &event->motion);
		break;

	case XENKBD_TYPE_KEY:
		FUNC0(info, &event->key);
		break;

	case XENKBD_TYPE_POS:
		FUNC3(info, &event->pos);
		break;

	case XENKBD_TYPE_MTOUCH:
		FUNC2(info, &event->mtouch);
		break;
	}
}