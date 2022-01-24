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
typedef  size_t u8 ;
struct trackpoint_data {size_t variant_id; size_t firmware_id; } ;
struct ps2dev {TYPE_1__* serio; } ;
struct psmouse {char* name; int /*<<< orphan*/  vendor; struct trackpoint_data* private; TYPE_2__* dev; int /*<<< orphan*/  disconnect; int /*<<< orphan*/  reconnect; struct ps2dev ps2dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  propbit; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_POINTING_STICK ; 
 int /*<<< orphan*/  TP_EXT_BTN ; 
 size_t TP_VARIANT_IBM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trackpoint_data*) ; 
 struct trackpoint_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,char*,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  trackpoint_attr_group ; 
 int /*<<< orphan*/  FUNC8 (struct trackpoint_data*) ; 
 int /*<<< orphan*/  trackpoint_disconnect ; 
 scalar_t__ FUNC9 (struct ps2dev*) ; 
 int FUNC10 (struct ps2dev*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  trackpoint_reconnect ; 
 int FUNC11 (struct psmouse*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct psmouse*,int) ; 
 int /*<<< orphan*/ * trackpoint_variants ; 

int FUNC13(struct psmouse *psmouse, bool set_properties)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	struct trackpoint_data *tp;
	u8 variant_id;
	u8 firmware_id;
	u8 button_info;
	int error;

	error = FUNC11(psmouse, &variant_id, &firmware_id);
	if (error)
		return error;

	if (!set_properties)
		return 0;

	tp = FUNC4(sizeof(*tp), GFP_KERNEL);
	if (!tp)
		return -ENOMEM;

	FUNC8(tp);
	tp->variant_id = variant_id;
	tp->firmware_id = firmware_id;

	psmouse->private = tp;

	psmouse->vendor = trackpoint_variants[variant_id];
	psmouse->name = "TrackPoint";

	psmouse->reconnect = trackpoint_reconnect;
	psmouse->disconnect = trackpoint_disconnect;

	if (variant_id != TP_VARIANT_IBM) {
		/* Newer variants do not support extended button query. */
		button_info = 0x33;
	} else {
		error = FUNC10(ps2dev, TP_EXT_BTN, &button_info);
		if (error) {
			FUNC7(psmouse,
				     "failed to get extended button data, assuming 3 buttons\n");
			button_info = 0x33;
		} else if (!button_info) {
			FUNC7(psmouse,
				     "got 0 in extended button data, assuming 3 buttons\n");
			button_info = 0x33;
		}
	}

	if ((button_info & 0x0f) >= 3)
		FUNC2(psmouse->dev, EV_KEY, BTN_MIDDLE);

	FUNC0(INPUT_PROP_POINTER, psmouse->dev->propbit);
	FUNC0(INPUT_PROP_POINTING_STICK, psmouse->dev->propbit);

	if (variant_id != TP_VARIANT_IBM ||
	    FUNC9(ps2dev) != 0) {
		/*
		 * Write defaults to TP if we did not reset the trackpoint.
		 */
		FUNC12(psmouse, false);
	}

	error = FUNC1(&ps2dev->serio->dev, &trackpoint_attr_group);
	if (error) {
		FUNC5(psmouse,
			    "failed to create sysfs attributes, error: %d\n",
			    error);
		FUNC3(psmouse->private);
		psmouse->private = NULL;
		return -1;
	}

	FUNC6(psmouse,
		     "%s TrackPoint firmware: 0x%02x, buttons: %d/%d\n",
		     psmouse->vendor, firmware_id,
		     (button_info & 0xf0) >> 4, button_info & 0x0f);

	return 0;
}