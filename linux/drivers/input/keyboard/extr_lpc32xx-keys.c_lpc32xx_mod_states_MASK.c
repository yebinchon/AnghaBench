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
struct lpc32xx_kscan_drv {int* lastkeystates; unsigned int* keymap; int /*<<< orphan*/  row_shift; int /*<<< orphan*/  kscan_base; struct input_dev* input; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,unsigned int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct lpc32xx_kscan_drv *kscandat, int col)
{
	struct input_dev *input = kscandat->input;
	unsigned row, changed, scancode, keycode;
	u8 key;

	key = FUNC4(FUNC0(kscandat->kscan_base, col));
	changed = key ^ kscandat->lastkeystates[col];
	kscandat->lastkeystates[col] = key;

	for (row = 0; changed; row++, changed >>= 1) {
		if (changed & 1) {
			/* Key state changed, signal an event */
			scancode = FUNC1(row, col,
						    kscandat->row_shift);
			keycode = kscandat->keymap[scancode];
			FUNC2(input, EV_MSC, MSC_SCAN, scancode);
			FUNC3(input, keycode, key & (1 << row));
		}
	}
}