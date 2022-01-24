#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  propbit; TYPE_2__ id; } ;
struct elan_tp_data {struct input_dev* tp_input; int /*<<< orphan*/  product_id; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  ELAN_VENDOR_ID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_POINTING_STICK ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,struct elan_tp_data*) ; 

__attribute__((used)) static int FUNC4(struct elan_tp_data *data)
{
	struct device *dev = &data->client->dev;
	struct input_dev *input;

	input = FUNC1(dev);
	if (!input)
		return -ENOMEM;

	input->name = "Elan TrackPoint";
	input->id.bustype = BUS_I2C;
	input->id.vendor = ELAN_VENDOR_ID;
	input->id.product = data->product_id;
	FUNC3(input, data);

	FUNC2(input, EV_REL, REL_X);
	FUNC2(input, EV_REL, REL_Y);
	FUNC2(input, EV_KEY, BTN_LEFT);
	FUNC2(input, EV_KEY, BTN_RIGHT);
	FUNC2(input, EV_KEY, BTN_MIDDLE);

	FUNC0(INPUT_PROP_POINTER, input->propbit);
	FUNC0(INPUT_PROP_POINTING_STICK, input->propbit);

	data->tp_input = input;

	return 0;
}