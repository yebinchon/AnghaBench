#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  input; } ;
struct TYPE_3__ {int flags; } ;
struct wiimote_data {TYPE_2__ extension; TYPE_1__ state; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT1X ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 size_t WIIMOD_GUITAR_KEY_B ; 
 size_t WIIMOD_GUITAR_KEY_DOWN ; 
 size_t WIIMOD_GUITAR_KEY_G ; 
 size_t WIIMOD_GUITAR_KEY_MINUS ; 
 size_t WIIMOD_GUITAR_KEY_O ; 
 size_t WIIMOD_GUITAR_KEY_PLUS ; 
 size_t WIIMOD_GUITAR_KEY_R ; 
 size_t WIIMOD_GUITAR_KEY_UP ; 
 size_t WIIMOD_GUITAR_KEY_Y ; 
 int WIIPROTO_FLAG_MP_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wiimod_guitar_map ; 

__attribute__((used)) static void FUNC3(struct wiimote_data *wdata, const __u8 *ext)
{
	__u8 sx, sy, tb, wb, bd, bm, bp, bo, br, bb, bg, by, bu;

	/*   Byte |  8  |  7  |  6  |  5  |  4  |  3  |  2  |  1  |
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 *    1   |  0  |  0  |              SX <5:0>             |
	 *    2   |  0  |  0  |              SY <5:0>             |
	 *   -----+-----+-----+-----+-----------------------------+
	 *    3   |  0  |  0  |  0  |      TB <4:0>               |
	 *   -----+-----+-----+-----+-----------------------------+
	 *    4   |  0  |  0  |  0  |      WB <4:0>               |
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 *    5   |  1  | BD  |  1  | B-  |  1  | B+  |  1  |  1  |
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 *    6   | BO  | BR  | BB  | BG  | BY  |  1  |  1  | BU  |
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 * All buttons are 0 if pressed
	 *
	 * With Motion+ enabled, it will look like this:
	 *   Byte |  8  |  7  |  6  |  5  |  4  |  3  |  2  |  1  |
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 *    1   |  0  |  0  |              SX <5:1>       | BU  |
	 *    2   |  0  |  0  |              SY <5:1>       |  1  |
	 *   -----+-----+-----+-----+-----------------------+-----+
	 *    3   |  0  |  0  |  0  |      TB <4:0>               |
	 *   -----+-----+-----+-----+-----------------------------+
	 *    4   |  0  |  0  |  0  |      WB <4:0>               |
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 *    5   |  1  | BD  |  1  | B-  |  1  | B+  |  1  |XXXXX|
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 *    6   | BO  | BR  | BB  | BG  | BY  |  1  |XXXXX|XXXXX|
	 *   -----+-----+-----+-----+-----+-----+-----+-----+-----+
	 */

	sx = ext[0] & 0x3f;
	sy = ext[1] & 0x3f;
	tb = ext[2] & 0x1f;
	wb = ext[3] & 0x1f;
	bd = !(ext[4] & 0x40);
	bm = !(ext[4] & 0x10);
	bp = !(ext[4] & 0x04);
	bo = !(ext[5] & 0x80);
	br = !(ext[5] & 0x40);
	bb = !(ext[5] & 0x20);
	bg = !(ext[5] & 0x10);
	by = !(ext[5] & 0x08);
	bu = !(ext[5] & 0x01);

	if (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE) {
		bu = !(ext[0] & 0x01);
		sx &= 0x3e;
		sy &= 0x3e;
	}

	FUNC0(wdata->extension.input, ABS_X, sx - 0x20);
	FUNC0(wdata->extension.input, ABS_Y, sy - 0x20);
	FUNC0(wdata->extension.input, ABS_HAT0X, tb);
	FUNC0(wdata->extension.input, ABS_HAT1X, wb - 0x10);

	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_G],
			 bg);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_R],
			 br);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_Y],
			 by);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_B],
			 bb);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_O],
			 bo);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_UP],
			 bu);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_DOWN],
			 bd);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_PLUS],
			 bp);
	FUNC1(wdata->extension.input,
			 wiimod_guitar_map[WIIMOD_GUITAR_KEY_MINUS],
			 bm);

	FUNC2(wdata->extension.input);
}