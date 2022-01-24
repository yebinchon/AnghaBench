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
struct stmpe_keypad_variant {int max_rows; } ;
struct stmpe_keypad {int debounce_ms; int scan_count; int cols; int rows; struct stmpe* stmpe; struct stmpe_keypad_variant* variant; } ;
struct stmpe {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  STMPE_BLOCK_KEYPAD ; 
 int STMPE_KEYPAD_MAX_DEBOUNCE ; 
 int STMPE_KEYPAD_MAX_SCAN_COUNT ; 
 int /*<<< orphan*/  STMPE_KPC_COL ; 
 int /*<<< orphan*/  STMPE_KPC_CTRL_LSB ; 
 int STMPE_KPC_CTRL_LSB_DEBOUNCE ; 
 int STMPE_KPC_CTRL_LSB_SCAN ; 
 int /*<<< orphan*/  STMPE_KPC_CTRL_MSB ; 
 int STMPE_KPC_CTRL_MSB_SCAN_COUNT ; 
 int /*<<< orphan*/  STMPE_KPC_ROW_LSB ; 
 int /*<<< orphan*/  STMPE_KPC_ROW_MSB ; 
 int STMPE_KPC_ROW_MSB_ROWS ; 
 int FUNC0 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stmpe_keypad*) ; 
 int FUNC2 (struct stmpe*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct stmpe*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct stmpe_keypad *keypad)
{
	const struct stmpe_keypad_variant *variant = keypad->variant;
	struct stmpe *stmpe = keypad->stmpe;
	int ret;

	if (keypad->debounce_ms > STMPE_KEYPAD_MAX_DEBOUNCE)
		return -EINVAL;

	if (keypad->scan_count > STMPE_KEYPAD_MAX_SCAN_COUNT)
		return -EINVAL;

	ret = FUNC0(stmpe, STMPE_BLOCK_KEYPAD);
	if (ret < 0)
		return ret;

	ret = FUNC1(keypad);
	if (ret < 0)
		return ret;

	ret = FUNC2(stmpe, STMPE_KPC_COL, keypad->cols);
	if (ret < 0)
		return ret;

	ret = FUNC2(stmpe, STMPE_KPC_ROW_LSB, keypad->rows);
	if (ret < 0)
		return ret;

	if (variant->max_rows > 8) {
		ret = FUNC3(stmpe, STMPE_KPC_ROW_MSB,
				     STMPE_KPC_ROW_MSB_ROWS,
				     keypad->rows >> 8);
		if (ret < 0)
			return ret;
	}

	ret = FUNC3(stmpe, STMPE_KPC_CTRL_MSB,
			     STMPE_KPC_CTRL_MSB_SCAN_COUNT,
			     keypad->scan_count << 4);
	if (ret < 0)
		return ret;

	return FUNC3(stmpe, STMPE_KPC_CTRL_LSB,
			      STMPE_KPC_CTRL_LSB_SCAN |
			      STMPE_KPC_CTRL_LSB_DEBOUNCE,
			      STMPE_KPC_CTRL_LSB_SCAN |
			      (keypad->debounce_ms << 1));
}