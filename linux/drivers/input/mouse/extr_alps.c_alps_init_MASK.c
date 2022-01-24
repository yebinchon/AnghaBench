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
struct TYPE_8__ {TYPE_3__* serio; } ;
struct psmouse {int pktsize; int resetafter; struct alps_data* private; scalar_t__ resync_time; int /*<<< orphan*/  reconnect; int /*<<< orphan*/  disconnect; int /*<<< orphan*/  poll; int /*<<< orphan*/  protocol_handler; TYPE_4__ ps2dev; struct input_dev* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int vendor; scalar_t__ version; int /*<<< orphan*/  product; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int* relbit; int* keybit; char* name; int /*<<< orphan*/  propbit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; } ;
struct alps_data {int (* hw_init ) (struct psmouse*) ;int flags; scalar_t__ proto_version; int /*<<< orphan*/  dev3_register_work; struct psmouse* psmouse; struct input_dev* dev2; int /*<<< orphan*/  phys2; int /*<<< orphan*/  (* set_abs_params ) (struct alps_data*,struct input_dev*) ;} ;
struct TYPE_7__ {char* phys; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int ALPS_BUTTONPAD ; 
 int ALPS_DUALPOINT ; 
 int ALPS_DUALPOINT_WITH_PRESSURE ; 
 int ALPS_FOUR_BUTTONS ; 
 int ALPS_FW_BK_1 ; 
 int ALPS_FW_BK_2 ; 
 scalar_t__ ALPS_PROTO_V4 ; 
 int ALPS_WHEEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I8042 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_POINTING_STICK ; 
 int /*<<< orphan*/  PSMOUSE_ALPS ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alps_disconnect ; 
 int /*<<< orphan*/  alps_poll ; 
 int /*<<< orphan*/  alps_process_byte ; 
 int /*<<< orphan*/  alps_reconnect ; 
 int /*<<< orphan*/  alps_register_bare_ps2_mouse ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 struct input_dev* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct alps_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct psmouse*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC16 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC17 (struct alps_data*,struct input_dev*) ; 

int FUNC18(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	struct input_dev *dev1 = psmouse->dev;
	int error;

	error = priv->hw_init(psmouse);
	if (error)
		goto init_fail;

	/*
	 * Undo part of setup done for us by psmouse core since touchpad
	 * is not a relative device.
	 */
	FUNC3(EV_REL, dev1->evbit);
	FUNC3(REL_X, dev1->relbit);
	FUNC3(REL_Y, dev1->relbit);

	/*
	 * Now set up our capabilities.
	 */
	dev1->evbit[FUNC1(EV_KEY)] |= FUNC0(EV_KEY);
	dev1->keybit[FUNC1(BTN_TOUCH)] |= FUNC0(BTN_TOUCH);
	dev1->keybit[FUNC1(BTN_TOOL_FINGER)] |= FUNC0(BTN_TOOL_FINGER);
	dev1->keybit[FUNC1(BTN_LEFT)] |=
		FUNC0(BTN_LEFT) | FUNC0(BTN_RIGHT);

	dev1->evbit[FUNC1(EV_ABS)] |= FUNC0(EV_ABS);

	priv->set_abs_params(priv, dev1);

	if (priv->flags & ALPS_WHEEL) {
		dev1->evbit[FUNC1(EV_REL)] |= FUNC0(EV_REL);
		dev1->relbit[FUNC1(REL_WHEEL)] |= FUNC0(REL_WHEEL);
	}

	if (priv->flags & (ALPS_FW_BK_1 | ALPS_FW_BK_2)) {
		dev1->keybit[FUNC1(BTN_FORWARD)] |= FUNC0(BTN_FORWARD);
		dev1->keybit[FUNC1(BTN_BACK)] |= FUNC0(BTN_BACK);
	}

	if (priv->flags & ALPS_FOUR_BUTTONS) {
		dev1->keybit[FUNC1(BTN_0)] |= FUNC0(BTN_0);
		dev1->keybit[FUNC1(BTN_1)] |= FUNC0(BTN_1);
		dev1->keybit[FUNC1(BTN_2)] |= FUNC0(BTN_2);
		dev1->keybit[FUNC1(BTN_3)] |= FUNC0(BTN_3);
	} else if (priv->flags & ALPS_BUTTONPAD) {
		FUNC14(INPUT_PROP_BUTTONPAD, dev1->propbit);
		FUNC5(BTN_RIGHT, dev1->keybit);
	} else {
		dev1->keybit[FUNC1(BTN_MIDDLE)] |= FUNC0(BTN_MIDDLE);
	}

	if (priv->flags & ALPS_DUALPOINT) {
		struct input_dev *dev2;

		dev2 = FUNC6();
		if (!dev2) {
			FUNC12(psmouse,
				    "failed to allocate trackstick device\n");
			error = -ENOMEM;
			goto init_fail;
		}

		FUNC15(priv->phys2, sizeof(priv->phys2), "%s/input1",
			 psmouse->ps2dev.serio->phys);
		dev2->phys = priv->phys2;

		/*
		 * format of input device name is: "protocol vendor name"
		 * see function psmouse_switch_protocol() in psmouse-base.c
		 */
		dev2->name = "AlpsPS/2 ALPS DualPoint Stick";

		dev2->id.bustype = BUS_I8042;
		dev2->id.vendor  = 0x0002;
		dev2->id.product = PSMOUSE_ALPS;
		dev2->id.version = priv->proto_version;
		dev2->dev.parent = &psmouse->ps2dev.serio->dev;

		FUNC10(dev2, EV_REL, REL_X);
		FUNC10(dev2, EV_REL, REL_Y);
		if (priv->flags & ALPS_DUALPOINT_WITH_PRESSURE) {
			FUNC10(dev2, EV_ABS, ABS_PRESSURE);
			FUNC9(dev2, ABS_PRESSURE, 0, 127, 0, 0);
		}
		FUNC10(dev2, EV_KEY, BTN_LEFT);
		FUNC10(dev2, EV_KEY, BTN_RIGHT);
		FUNC10(dev2, EV_KEY, BTN_MIDDLE);

		FUNC4(INPUT_PROP_POINTER, dev2->propbit);
		FUNC4(INPUT_PROP_POINTING_STICK, dev2->propbit);

		error = FUNC8(dev2);
		if (error) {
			FUNC12(psmouse,
				    "failed to register trackstick device: %d\n",
				    error);
			FUNC7(dev2);
			goto init_fail;
		}

		priv->dev2 = dev2;
	}

	priv->psmouse = psmouse;

	FUNC2(&priv->dev3_register_work,
			  alps_register_bare_ps2_mouse);

	psmouse->protocol_handler = alps_process_byte;
	psmouse->poll = alps_poll;
	psmouse->disconnect = alps_disconnect;
	psmouse->reconnect = alps_reconnect;
	psmouse->pktsize = priv->proto_version == ALPS_PROTO_V4 ? 8 : 6;

	/* We are having trouble resyncing ALPS touchpads so disable it for now */
	psmouse->resync_time = 0;

	/* Allow 2 invalid packets without resetting device */
	psmouse->resetafter = psmouse->pktsize * 2;

	return 0;

init_fail:
	FUNC13(psmouse);
	/*
	 * Even though we did not allocate psmouse->private we do free
	 * it here.
	 */
	FUNC11(psmouse->private);
	psmouse->private = NULL;
	return error;
}