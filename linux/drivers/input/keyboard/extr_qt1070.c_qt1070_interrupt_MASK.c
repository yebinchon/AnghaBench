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
struct qt1070_data {int last_keys; int /*<<< orphan*/ * keycodes; struct input_dev* input; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DET_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  qt1070_key2code ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct qt1070_data *data = dev_id;
	struct i2c_client *client = data->client;
	struct input_dev *input = data->input;
	int i;
	u8 new_keys, keyval, mask = 0x01;

	/* Read the detected status register, thus clearing interrupt */
	FUNC3(client, DET_STATUS);

	/* Read which key changed */
	new_keys = FUNC3(client, KEY_STATUS);

	for (i = 0; i < FUNC0(qt1070_key2code); i++) {
		keyval = new_keys & mask;
		if ((data->last_keys & mask) != keyval)
			FUNC1(input, data->keycodes[i], keyval);
		mask <<= 1;
	}
	FUNC2(input);

	data->last_keys = new_keys;
	return IRQ_HANDLED;
}