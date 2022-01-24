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
struct wacom_i2c {int* data; int prox; int /*<<< orphan*/  tool; int /*<<< orphan*/  client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct wacom_i2c *wac_i2c = dev_id;
	struct input_dev *input = wac_i2c->input;
	u8 *data = wac_i2c->data;
	unsigned int x, y, pressure;
	unsigned char tsw, f1, f2, ers;
	int error;

	error = FUNC0(wac_i2c->client,
				wac_i2c->data, sizeof(wac_i2c->data));
	if (error < 0)
		goto out;

	tsw = data[3] & 0x01;
	ers = data[3] & 0x04;
	f1 = data[3] & 0x02;
	f2 = data[3] & 0x10;
	x = FUNC4((__le16 *)&data[4]);
	y = FUNC4((__le16 *)&data[6]);
	pressure = FUNC4((__le16 *)&data[8]);

	if (!wac_i2c->prox)
		wac_i2c->tool = (data[3] & 0x0c) ?
			BTN_TOOL_RUBBER : BTN_TOOL_PEN;

	wac_i2c->prox = data[3] & 0x20;

	FUNC2(input, BTN_TOUCH, tsw || ers);
	FUNC2(input, wac_i2c->tool, wac_i2c->prox);
	FUNC2(input, BTN_STYLUS, f1);
	FUNC2(input, BTN_STYLUS2, f2);
	FUNC1(input, ABS_X, x);
	FUNC1(input, ABS_Y, y);
	FUNC1(input, ABS_PRESSURE, pressure);
	FUNC3(input);

out:
	return IRQ_HANDLED;
}