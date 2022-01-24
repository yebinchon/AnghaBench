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
struct vmmouse_data {struct input_dev* abs_dev; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  phys; } ;
struct TYPE_8__ {TYPE_3__* serio; } ;
struct psmouse {struct vmmouse_data* private; int /*<<< orphan*/  reconnect; int /*<<< orphan*/  disconnect; int /*<<< orphan*/  protocol_handler; TYPE_4__ ps2dev; int /*<<< orphan*/  model; struct input_dev* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int vendor; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; int /*<<< orphan*/  phys; } ;
struct TYPE_7__ {char* phys; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BUS_I8042 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PSMOUSE_VMMOUSE ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  VMMOUSE_MAX_X ; 
 int /*<<< orphan*/  VMMOUSE_MAX_Y ; 
 char* VMMOUSE_NAME ; 
 char* VMMOUSE_PSNAME ; 
 char* VMMOUSE_VENDOR ; 
 struct input_dev* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vmmouse_data*) ; 
 struct vmmouse_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct psmouse*) ; 
 int /*<<< orphan*/  vmmouse_disconnect ; 
 int FUNC10 (struct psmouse*) ; 
 int /*<<< orphan*/  vmmouse_process_byte ; 
 int /*<<< orphan*/  vmmouse_reconnect ; 

int FUNC11(struct psmouse *psmouse)
{
	struct vmmouse_data *priv;
	struct input_dev *rel_dev = psmouse->dev, *abs_dev;
	int error;

	FUNC7(psmouse);
	error = FUNC10(psmouse);
	if (error)
		return error;

	priv = FUNC6(sizeof(*priv), GFP_KERNEL);
	abs_dev = FUNC0();
	if (!priv || !abs_dev) {
		error = -ENOMEM;
		goto init_fail;
	}

	priv->abs_dev = abs_dev;
	psmouse->private = priv;

	/* Set up and register absolute device */
	FUNC8(priv->phys, sizeof(priv->phys), "%s/input1",
		 psmouse->ps2dev.serio->phys);

	/* Mimic name setup for relative device in psmouse-base.c */
	FUNC8(priv->dev_name, sizeof(priv->dev_name), "%s %s %s",
		 VMMOUSE_PSNAME, VMMOUSE_VENDOR, VMMOUSE_NAME);
	abs_dev->phys = priv->phys;
	abs_dev->name = priv->dev_name;
	abs_dev->id.bustype = BUS_I8042;
	abs_dev->id.vendor = 0x0002;
	abs_dev->id.product = PSMOUSE_VMMOUSE;
	abs_dev->id.version = psmouse->model;
	abs_dev->dev.parent = &psmouse->ps2dev.serio->dev;

	/* Set absolute device capabilities */
	FUNC4(abs_dev, EV_KEY, BTN_LEFT);
	FUNC4(abs_dev, EV_KEY, BTN_RIGHT);
	FUNC4(abs_dev, EV_KEY, BTN_MIDDLE);
	FUNC4(abs_dev, EV_ABS, ABS_X);
	FUNC4(abs_dev, EV_ABS, ABS_Y);
	FUNC3(abs_dev, ABS_X, 0, VMMOUSE_MAX_X, 0, 0);
	FUNC3(abs_dev, ABS_Y, 0, VMMOUSE_MAX_Y, 0, 0);

	error = FUNC2(priv->abs_dev);
	if (error)
		goto init_fail;

	/* Add wheel capability to the relative device */
	FUNC4(rel_dev, EV_REL, REL_WHEEL);

	psmouse->protocol_handler = vmmouse_process_byte;
	psmouse->disconnect = vmmouse_disconnect;
	psmouse->reconnect = vmmouse_reconnect;

	return 0;

init_fail:
	FUNC9(psmouse);
	FUNC7(psmouse);
	FUNC1(abs_dev);
	FUNC5(priv);
	psmouse->private = NULL;

	return error;
}