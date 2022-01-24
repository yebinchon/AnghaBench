#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct input_polled_dev {TYPE_1__* input; struct clps711x_keypad_data* private; } ;
struct clps711x_keypad_data {int row_count; int /*<<< orphan*/  syscon; int /*<<< orphan*/  row_shift; struct clps711x_gpio_data* gpio_data; } ;
struct clps711x_gpio_data {int /*<<< orphan*/  last_state; int /*<<< orphan*/  desc; } ;
struct TYPE_4__ {unsigned short* keycode; } ;

/* Variables and functions */
 int CLPS711X_KEYPAD_COL_COUNT ; 
 int /*<<< orphan*/  EV_MSC ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SYSCON1_KBDSCAN_MASK ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned short const,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct input_polled_dev *dev)
{
	const unsigned short *keycodes = dev->input->keycode;
	struct clps711x_keypad_data *priv = dev->private;
	bool sync = false;
	int col, row;

	for (col = 0; col < CLPS711X_KEYPAD_COL_COUNT; col++) {
		/* Assert column */
		FUNC8(priv->syscon, SYSCON_OFFSET,
				   SYSCON1_KBDSCAN_MASK,
				   FUNC1(8 + col));

		/* Scan rows */
		for (row = 0; row < priv->row_count; row++) {
			struct clps711x_gpio_data *data = &priv->gpio_data[row];
			bool state, state1;

			/* Read twice for protection against fluctuations */
			do {
				state = FUNC4(data->desc);
				FUNC3();
				state1 = FUNC4(data->desc);
			} while (state != state1);

			if (FUNC10(col, data->last_state) != state) {
				int code = FUNC0(row, col,
							    priv->row_shift);

				if (state) {
					FUNC9(col, data->last_state);
					FUNC5(dev->input, EV_MSC,
						    MSC_SCAN, code);
				} else {
					FUNC2(col, data->last_state);
				}

				if (keycodes[code])
					FUNC6(dev->input,
							 keycodes[code], state);
				sync = true;
			}
		}

		/* Set all columns to low */
		FUNC8(priv->syscon, SYSCON_OFFSET,
				   SYSCON1_KBDSCAN_MASK, FUNC1(1));
	}

	if (sync)
		FUNC7(dev->input);
}