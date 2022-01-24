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
struct omap4_keypad {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP4_KBD_IRQENABLE ; 
 int /*<<< orphan*/  OMAP4_KBD_IRQSTATUS ; 
 int /*<<< orphan*/  OMAP4_KBD_WAKEUPENABLE ; 
 int /*<<< orphan*/  OMAP4_VAL_IRQDISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap4_keypad* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap4_keypad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap4_keypad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap4_keypad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct input_dev *input)
{
	struct omap4_keypad *keypad_data = FUNC2(input);

	FUNC0(keypad_data->irq);

	/* Disable interrupts and wake-up events */
	FUNC4(keypad_data, OMAP4_KBD_IRQENABLE,
			 OMAP4_VAL_IRQDISABLE);
	FUNC5(keypad_data, OMAP4_KBD_WAKEUPENABLE, 0);

	/* clear pending interrupts */
	FUNC4(keypad_data, OMAP4_KBD_IRQSTATUS,
			 FUNC3(keypad_data, OMAP4_KBD_IRQSTATUS));

	FUNC1(keypad_data->irq);

	FUNC6(input->dev.parent);
}