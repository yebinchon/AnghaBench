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
typedef  int /*<<< orphan*/  touch_data ;
struct icn8505_touch_data {int touch_count; int softbutton; struct icn8505_touch* touches; } ;
struct icn8505_touch {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  slot; int /*<<< orphan*/  event; } ;
struct icn8505_data {int /*<<< orphan*/  input; int /*<<< orphan*/  prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ICN8505_MAX_TOUCHES ; 
 int /*<<< orphan*/  ICN8505_REG_TOUCHDATA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_LEFTMETA ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct icn8505_data*,int /*<<< orphan*/ ,struct icn8505_touch_data*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct icn8505_data *icn8505 = dev_id;
	struct device *dev = &icn8505->client->dev;
	struct icn8505_touch_data touch_data;
	int i, error;

	error = FUNC3(icn8505, ICN8505_REG_TOUCHDATA,
				  &touch_data, sizeof(touch_data));
	if (error) {
		FUNC0(dev, "Error reading touch data: %d\n", error);
		return IRQ_HANDLED;
	}

	if (touch_data.touch_count > ICN8505_MAX_TOUCHES) {
		FUNC1(dev, "Too many touches %d > %d\n",
			 touch_data.touch_count, ICN8505_MAX_TOUCHES);
		touch_data.touch_count = ICN8505_MAX_TOUCHES;
	}

	for (i = 0; i < touch_data.touch_count; i++) {
		struct icn8505_touch *touch = &touch_data.touches[i];
		bool act = FUNC4(touch->event);

		FUNC6(icn8505->input, touch->slot);
		FUNC5(icn8505->input, MT_TOOL_FINGER, act);
		if (!act)
			continue;

		FUNC10(icn8505->input, &icn8505->prop,
				       FUNC2(touch->x),
				       FUNC2(touch->y),
				       true);
	}

	FUNC7(icn8505->input);
	FUNC8(icn8505->input, KEY_LEFTMETA,
			 touch_data.softbutton == 1);
	FUNC9(icn8505->input);

	return IRQ_HANDLED;
}