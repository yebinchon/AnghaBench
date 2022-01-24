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
typedef  scalar_t__ u32 ;
struct input_polled_dev {int /*<<< orphan*/  input; struct adc_keys_state* private; } ;
struct adc_keys_state {int keyup_voltage; int num_keys; int last_key; TYPE_1__* map; int /*<<< orphan*/  channel; } ;
struct TYPE_2__ {int voltage; int keycode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct input_polled_dev *dev)
{
	struct adc_keys_state *st = dev->private;
	int i, value, ret;
	u32 diff, closest = 0xffffffff;
	int keycode = 0;

	ret = FUNC1(st->channel, &value);
	if (FUNC4(ret < 0)) {
		/* Forcibly release key if any was pressed */
		value = st->keyup_voltage;
	} else {
		for (i = 0; i < st->num_keys; i++) {
			diff = FUNC0(st->map[i].voltage - value);
			if (diff < closest) {
				closest = diff;
				keycode = st->map[i].keycode;
			}
		}
	}

	if (FUNC0(st->keyup_voltage - value) < closest)
		keycode = 0;

	if (st->last_key && st->last_key != keycode)
		FUNC2(dev->input, st->last_key, 0);

	if (keycode)
		FUNC2(dev->input, keycode, 1);

	FUNC3(dev->input);
	st->last_key = keycode;
}