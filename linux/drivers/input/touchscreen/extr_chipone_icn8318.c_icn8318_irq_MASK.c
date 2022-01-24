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
struct icn8318_touch_data {int touch_count; struct icn8318_touch* touches; scalar_t__ softbutton; } ;
struct icn8318_touch {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  slot; int /*<<< orphan*/  event; } ;
struct icn8318_data {int /*<<< orphan*/  input; int /*<<< orphan*/  prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ICN8318_MAX_TOUCHES ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int) ; 
 int FUNC3 (TYPE_1__*,struct icn8318_touch_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct icn8318_data *data = dev_id;
	struct device *dev = &data->client->dev;
	struct icn8318_touch_data touch_data;
	int i, ret;

	ret = FUNC3(data->client, &touch_data);
	if (ret < 0) {
		FUNC1(dev, "Error reading touch data: %d\n", ret);
		return IRQ_HANDLED;
	}

	if (touch_data.softbutton) {
		/*
		 * Other data is invalid when a softbutton is pressed.
		 * This needs some extra devicetree bindings to map the icn8318
		 * softbutton codes to evdev codes. Currently no known devices
		 * use this.
		 */
		return IRQ_HANDLED;
	}

	if (touch_data.touch_count > ICN8318_MAX_TOUCHES) {
		FUNC2(dev, "Too much touches %d > %d\n",
			 touch_data.touch_count, ICN8318_MAX_TOUCHES);
		touch_data.touch_count = ICN8318_MAX_TOUCHES;
	}

	for (i = 0; i < touch_data.touch_count; i++) {
		struct icn8318_touch *touch = &touch_data.touches[i];
		bool act = FUNC4(touch->event);

		FUNC6(data->input, touch->slot);
		FUNC5(data->input, MT_TOOL_FINGER, act);
		if (!act)
			continue;

		FUNC9(data->input, &data->prop,
				       FUNC0(touch->x),
				       FUNC0(touch->y), true);
	}

	FUNC7(data->input);
	FUNC8(data->input);

	return IRQ_HANDLED;
}