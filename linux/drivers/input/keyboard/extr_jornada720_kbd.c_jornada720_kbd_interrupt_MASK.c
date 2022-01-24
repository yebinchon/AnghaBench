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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct jornadakbd {int /*<<< orphan*/ * keymap; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  GETSCANKEYCODE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 scalar_t__ TXDUMMY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct jornadakbd* FUNC8 (struct platform_device*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct jornadakbd *jornadakbd = FUNC8(pdev);
	struct input_dev *input = jornadakbd->input;
	u8 count, kbd_data, scan_code;

	/* startup ssp with spinlock */
	FUNC7();

	if (FUNC6(GETSCANKEYCODE) != TXDUMMY) {
		FUNC0(&pdev->dev,
			"GetKeycode command failed with ETIMEDOUT, flushed bus\n");
	} else {
		/* How many keycodes are waiting for us? */
		count = FUNC4(TXDUMMY);

		/* Lets drag them out one at a time */
		while (count--) {
			/* Exchange TxDummy for location (keymap[kbddata]) */
			kbd_data = FUNC4(TXDUMMY);
			scan_code = kbd_data & 0x7f;

			FUNC1(input, EV_MSC, MSC_SCAN, scan_code);
			FUNC2(input, jornadakbd->keymap[scan_code],
					 !(kbd_data & 0x80));
			FUNC3(input);
		}
	}

	/* release spinlock and turn off ssp */
	FUNC5();

	return IRQ_HANDLED;
}