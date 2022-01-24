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
typedef  int u8 ;
struct input_mt_pos {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct ektf2127_ts {int /*<<< orphan*/  input; int /*<<< orphan*/  prop; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EKTF2127_MAX_TOUCHES ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int const*,unsigned int,struct input_mt_pos*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,struct input_mt_pos*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct ektf2127_ts *ts, const u8 *buf)
{
	struct input_mt_pos touches[EKTF2127_MAX_TOUCHES];
	int slots[EKTF2127_MAX_TOUCHES];
	unsigned int touch_count, i;

	touch_count = buf[1] & 0x07;
	if (touch_count > EKTF2127_MAX_TOUCHES) {
		FUNC0(&ts->client->dev,
			"Too many touches %d > %d\n",
			touch_count, EKTF2127_MAX_TOUCHES);
		touch_count = EKTF2127_MAX_TOUCHES;
	}

	FUNC1(buf, touch_count, touches);
	FUNC2(ts->input, slots, touches,
			      touch_count, 0);

	for (i = 0; i < touch_count; i++) {
		FUNC4(ts->input, slots[i]);
		FUNC3(ts->input, MT_TOOL_FINGER, true);
		FUNC7(ts->input, &ts->prop,
				       touches[i].x, touches[i].y, true);
	}

	FUNC5(ts->input);
	FUNC6(ts->input);
}