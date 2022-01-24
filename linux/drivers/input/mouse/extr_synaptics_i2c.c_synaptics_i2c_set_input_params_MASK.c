#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct synaptics_i2c {TYPE_4__* client; struct input_dev* input; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  version; int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_3__ dev; TYPE_2__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; TYPE_1__* adapter; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  INFO_QUERY_REG0 ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,struct synaptics_i2c*) ; 
 int /*<<< orphan*/  synaptics_i2c_close ; 
 int /*<<< orphan*/  synaptics_i2c_open ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct synaptics_i2c *touch)
{
	struct input_dev *input = touch->input;

	input->name = touch->client->name;
	input->phys = touch->client->adapter->name;
	input->id.bustype = BUS_I2C;
	input->id.version = FUNC2(touch->client,
						   INFO_QUERY_REG0);
	input->dev.parent = &touch->client->dev;
	input->open = synaptics_i2c_open;
	input->close = synaptics_i2c_close;
	FUNC1(input, touch);

	/* Register the device as mouse */
	FUNC0(EV_REL, input->evbit);
	FUNC0(REL_X, input->relbit);
	FUNC0(REL_Y, input->relbit);

	/* Register device's buttons and keys */
	FUNC0(EV_KEY, input->evbit);
	FUNC0(BTN_LEFT, input->keybit);
}