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
typedef  int uint8_t ;
struct input_dev {unsigned short* keycode; } ;
struct cros_ec_keyb {int cols; int rows; int* old_kb_state; struct input_dev* idev; int /*<<< orphan*/  dev; int /*<<< orphan*/  row_shift; scalar_t__ ghost_filter; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cros_ec_keyb*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,unsigned short const,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct cros_ec_keyb *ckdev,
			 uint8_t *kb_state, int len)
{
	struct input_dev *idev = ckdev->idev;
	int col, row;
	int new_state;
	int old_state;

	if (ckdev->ghost_filter && FUNC1(ckdev, kb_state)) {
		/*
		 * Simple-minded solution: ignore this state. The obvious
		 * improvement is to only ignore changes to keys involved in
		 * the ghosting, but process the other changes.
		 */
		FUNC2(ckdev->dev, "ghosting found\n");
		return;
	}

	for (col = 0; col < ckdev->cols; col++) {
		for (row = 0; row < ckdev->rows; row++) {
			int pos = FUNC0(row, col, ckdev->row_shift);
			const unsigned short *keycodes = idev->keycode;

			new_state = kb_state[col] & (1 << row);
			old_state = ckdev->old_kb_state[col] & (1 << row);
			if (new_state != old_state) {
				FUNC2(ckdev->dev,
					"changed: [r%d c%d]: byte %02x\n",
					row, col, new_state);

				FUNC3(idev, keycodes[pos],
						 new_state);
			}
		}
		ckdev->old_kb_state[col] = kb_state[col];
	}
	FUNC4(ckdev->idev);
}