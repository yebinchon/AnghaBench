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
typedef  int /*<<< orphan*/  u32 ;
struct omap4_keypad {unsigned char* key_state; unsigned int rows; unsigned int cols; int /*<<< orphan*/ * keymap; int /*<<< orphan*/  row_shift; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  OMAP4_KBD_FULLCODE31_0 ; 
 int /*<<< orphan*/  OMAP4_KBD_FULLCODE63_32 ; 
 int /*<<< orphan*/  OMAP4_KBD_IRQSTATUS ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap4_keypad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap4_keypad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct omap4_keypad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct omap4_keypad *keypad_data = dev_id;
	struct input_dev *input_dev = keypad_data->input;
	unsigned char key_state[FUNC0(keypad_data->key_state)];
	unsigned int col, row, code, changed;
	u32 *new_state = (u32 *) key_state;

	*new_state = FUNC6(keypad_data, OMAP4_KBD_FULLCODE31_0);
	*(new_state + 1) = FUNC6(keypad_data, OMAP4_KBD_FULLCODE63_32);

	for (row = 0; row < keypad_data->rows; row++) {
		changed = key_state[row] ^ keypad_data->key_state[row];
		if (!changed)
			continue;

		for (col = 0; col < keypad_data->cols; col++) {
			if (changed & (1 << col)) {
				code = FUNC1(row, col,
						keypad_data->row_shift);
				FUNC2(input_dev, EV_MSC, MSC_SCAN, code);
				FUNC3(input_dev,
						 keypad_data->keymap[code],
						 key_state[row] & (1 << col));
			}
		}
	}

	FUNC4(input_dev);

	FUNC8(keypad_data->key_state, key_state,
		sizeof(keypad_data->key_state));

	/* clear pending interrupts */
	FUNC7(keypad_data, OMAP4_KBD_IRQSTATUS,
			 FUNC5(keypad_data, OMAP4_KBD_IRQSTATUS));

	return IRQ_HANDLED;
}