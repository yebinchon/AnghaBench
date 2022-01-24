#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ brightness; } ;
struct tm2_touchkey_data {int num_keycodes; TYPE_2__ led_dev; TYPE_1__* variant; int /*<<< orphan*/  input_dev; int /*<<< orphan*/ * keycodes; TYPE_3__* client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ fixed_regulator; int /*<<< orphan*/  keycode_reg; scalar_t__ no_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LED_OFF ; 
 int TM2_TOUCHKEY_BIT_KEYCODE ; 
 int TM2_TOUCHKEY_BIT_PRESS_EV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *devid)
{
	struct tm2_touchkey_data *touchkey = devid;
	int data;
	int index;
	int i;

	if (touchkey->variant->no_reg)
		data = FUNC2(touchkey->client);
	else
		data = FUNC3(touchkey->client,
						touchkey->variant->keycode_reg);
	if (data < 0) {
		FUNC0(&touchkey->client->dev,
			"failed to read i2c data: %d\n", data);
		goto out;
	}

	index = (data & TM2_TOUCHKEY_BIT_KEYCODE) - 1;
	if (index < 0 || index >= touchkey->num_keycodes) {
		FUNC1(&touchkey->client->dev,
			 "invalid keycode index %d\n", index);
		goto out;
	}

	if (data & TM2_TOUCHKEY_BIT_PRESS_EV) {
		for (i = 0; i < touchkey->num_keycodes; i++)
			FUNC4(touchkey->input_dev,
					 touchkey->keycodes[i], 0);
	} else {
		FUNC4(touchkey->input_dev,
				 touchkey->keycodes[index], 1);
	}

	FUNC5(touchkey->input_dev);

out:
	if (touchkey->variant->fixed_regulator &&
				data & TM2_TOUCHKEY_BIT_PRESS_EV) {
		/* touch turns backlight on, so make sure we're in sync */
		if (touchkey->led_dev.brightness == LED_OFF)
			FUNC6(&touchkey->led_dev,
							LED_OFF);
	}

	return IRQ_HANDLED;
}