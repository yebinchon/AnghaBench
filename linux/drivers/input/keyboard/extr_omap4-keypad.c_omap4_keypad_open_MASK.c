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
 int OMAP4_DEF_CTRL_NOSOFTMODE ; 
 int OMAP4_DEF_CTRL_PTV_SHIFT ; 
 int OMAP4_DEF_IRQENABLE_EVENTEN ; 
 int OMAP4_DEF_IRQENABLE_LONGKEY ; 
 int OMAP4_DEF_WUP_EVENT_ENA ; 
 int OMAP4_DEF_WUP_LONG_KEY_ENA ; 
 int /*<<< orphan*/  OMAP4_KBD_CTRL ; 
 int /*<<< orphan*/  OMAP4_KBD_DEBOUNCINGTIME ; 
 int /*<<< orphan*/  OMAP4_KBD_IRQENABLE ; 
 int /*<<< orphan*/  OMAP4_KBD_IRQSTATUS ; 
 int /*<<< orphan*/  OMAP4_KBD_WAKEUPENABLE ; 
 int OMAP4_KEYPAD_PTV_DIV_128 ; 
 int OMAP4_VAL_DEBOUNCINGTIME_16MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct omap4_keypad* FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct omap4_keypad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap4_keypad*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct omap4_keypad*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct input_dev *input)
{
	struct omap4_keypad *keypad_data = FUNC2(input);

	FUNC6(input->dev.parent);

	FUNC0(keypad_data->irq);

	FUNC5(keypad_data, OMAP4_KBD_CTRL,
			OMAP4_DEF_CTRL_NOSOFTMODE |
			(OMAP4_KEYPAD_PTV_DIV_128 << OMAP4_DEF_CTRL_PTV_SHIFT));
	FUNC5(keypad_data, OMAP4_KBD_DEBOUNCINGTIME,
			OMAP4_VAL_DEBOUNCINGTIME_16MS);
	/* clear pending interrupts */
	FUNC4(keypad_data, OMAP4_KBD_IRQSTATUS,
			 FUNC3(keypad_data, OMAP4_KBD_IRQSTATUS));
	FUNC4(keypad_data, OMAP4_KBD_IRQENABLE,
			OMAP4_DEF_IRQENABLE_EVENTEN |
				OMAP4_DEF_IRQENABLE_LONGKEY);
	FUNC5(keypad_data, OMAP4_KBD_WAKEUPENABLE,
			OMAP4_DEF_WUP_EVENT_ENA | OMAP4_DEF_WUP_LONG_KEY_ENA);

	FUNC1(keypad_data->irq);

	return 0;
}