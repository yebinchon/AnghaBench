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
struct key_entry {unsigned int keycode; } ;
struct dm355evm_keys {int /*<<< orphan*/  input; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM355EVM_MSP_INPUT_HIGH ; 
 int /*<<< orphan*/  DM355EVM_MSP_INPUT_LOW ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int KEY_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct key_entry* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_keys)
{
	static u16 last_event;
	struct dm355evm_keys *keys = _keys;
	const struct key_entry *ke;
	unsigned int keycode;
	int status;
	u16 event;

	/* For simplicity we ignore INPUT_COUNT and just read
	 * events until we get the "queue empty" indicator.
	 * Reading INPUT_LOW decrements the count.
	 */
	for (;;) {
		status = FUNC1(DM355EVM_MSP_INPUT_HIGH);
		if (status < 0) {
			FUNC0(keys->dev, "input high err %d\n",
					status);
			break;
		}
		event = status << 8;

		status = FUNC1(DM355EVM_MSP_INPUT_LOW);
		if (status < 0) {
			FUNC0(keys->dev, "input low err %d\n",
					status);
			break;
		}
		event |= status;
		if (event == 0xdead)
			break;

		/* Press and release a button:  two events, same code.
		 * Press and hold (autorepeat), then release: N events
		 * (N > 2), same code.  For RC5 buttons the toggle bits
		 * distinguish (for example) "1-autorepeat" from "1 1";
		 * but PCB buttons don't support that bit.
		 *
		 * So we must synthesize release events.  We do that by
		 * mapping events to a press/release event pair; then
		 * to avoid adding extra events, skip the second event
		 * of each pair.
		 */
		if (event == last_event) {
			last_event = 0;
			continue;
		}
		last_event = event;

		/* ignore the RC5 toggle bit */
		event &= ~0x0800;

		/* find the key, or report it as unknown */
		ke = FUNC4(keys->input, event);
		keycode = ke ? ke->keycode : KEY_UNKNOWN;
		FUNC0(keys->dev,
			"input event 0x%04x--> keycode %d\n",
			event, keycode);

		/* report press + release */
		FUNC2(keys->input, keycode, 1);
		FUNC3(keys->input);
		FUNC2(keys->input, keycode, 0);
		FUNC3(keys->input);
	}

	return IRQ_HANDLED;
}