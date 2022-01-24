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
typedef  int u16 ;
struct twl4030_keypad {int n_rows; int* kp_state; int n_cols; int /*<<< orphan*/ * keymap; int /*<<< orphan*/  dbg_dev; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  new_state ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int TWL4030_MAX_ROWS ; 
 int /*<<< orphan*/  TWL4030_ROW_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct twl4030_keypad*,int*) ; 
 int FUNC7 (struct twl4030_keypad*,int*) ; 

__attribute__((used)) static void FUNC8(struct twl4030_keypad *kp, bool release_all)
{
	struct input_dev *input = kp->input;
	u16 new_state[TWL4030_MAX_ROWS];
	int col, row;

	if (release_all) {
		FUNC5(new_state, 0, sizeof(new_state));
	} else {
		/* check for any changes */
		int ret = FUNC7(kp, new_state);

		if (ret < 0)	/* panic ... */
			return;

		if (FUNC6(kp, new_state))
			return;
	}

	/* check for changes and print those */
	for (row = 0; row < kp->n_rows; row++) {
		int changed = new_state[row] ^ kp->kp_state[row];

		if (!changed)
			continue;

		/* Extra column handles "all gnd" rows */
		for (col = 0; col < kp->n_cols + 1; col++) {
			int code;

			if (!(changed & (1 << col)))
				continue;

			FUNC1(kp->dbg_dev, "key [%d:%d] %s\n", row, col,
				(new_state[row] & (1 << col)) ?
				"press" : "release");

			code = FUNC0(row, col, TWL4030_ROW_SHIFT);
			FUNC2(input, EV_MSC, MSC_SCAN, code);
			FUNC3(input, kp->keymap[code],
					 new_state[row] & (1 << col));
		}
		kp->kp_state[row] = new_state[row];
	}
	FUNC4(input);
}