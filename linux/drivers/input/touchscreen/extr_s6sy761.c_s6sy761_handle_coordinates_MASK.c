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
typedef  int u8 ;
struct s6sy761_data {int dummy; } ;

/* Variables and functions */
 int S6SY761_MASK_TID ; 
 int S6SY761_MASK_TOUCH_STATE ; 
#define  S6SY761_TS_MOVE 131 
#define  S6SY761_TS_NONE 130 
#define  S6SY761_TS_PRESS 129 
#define  S6SY761_TS_RELEASE 128 
 int /*<<< orphan*/  FUNC0 (struct s6sy761_data*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s6sy761_data*,int*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct s6sy761_data *sdata, u8 *event)
{
	u8 tid;
	u8 touch_state;

	if (FUNC2(!(event[0] & S6SY761_MASK_TID)))
		return;

	tid = ((event[0] & S6SY761_MASK_TID) >> 2) - 1;
	touch_state = (event[0] & S6SY761_MASK_TOUCH_STATE) >> 6;

	switch (touch_state) {

	case S6SY761_TS_NONE:
		break;
	case S6SY761_TS_RELEASE:
		FUNC1(sdata, event, tid);
		break;
	case S6SY761_TS_PRESS:
	case S6SY761_TS_MOVE:
		FUNC0(sdata, event, tid);
		break;
	}
}