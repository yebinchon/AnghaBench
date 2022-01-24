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
struct psmouse {char* vendor; char* name; int /*<<< orphan*/ * private; int /*<<< orphan*/  model; } ;
struct alps_data {int flags; int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 int ALPS_DUALPOINT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct psmouse*,struct alps_data*) ; 
 scalar_t__ FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (struct alps_data*) ; 
 struct alps_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*) ; 

int FUNC6(struct psmouse *psmouse, bool set_properties)
{
	struct alps_data *priv;
	int error;

	error = FUNC0(psmouse, NULL);
	if (error)
		return error;

	/*
	 * ALPS cs19 is a trackpoint-only device, and uses different
	 * protocol than DualPoint ones, so we return -EINVAL here and let
	 * trackpoint.c drive this device. If the trackpoint driver is not
	 * enabled, the device will fall back to a bare PS/2 mouse.
	 * If ps2_command() fails here, we depend on the immediately
	 * followed psmouse_reset() to reset the device to normal state.
	 */
	if (FUNC1(psmouse)) {
		FUNC4(psmouse,
			    "ALPS CS19 trackpoint-only device detected, ignoring\n");
		return -EINVAL;
	}

	/*
	 * Reset the device to make sure it is fully operational:
	 * on some laptops, like certain Dell Latitudes, we may
	 * fail to properly detect presence of trackstick if device
	 * has not been reset.
	 */
	FUNC5(psmouse);

	priv = FUNC3(sizeof(struct alps_data), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	error = FUNC0(psmouse, priv);
	if (error) {
		FUNC2(priv);
		return error;
	}

	if (set_properties) {
		psmouse->vendor = "ALPS";
		psmouse->name = priv->flags & ALPS_DUALPOINT ?
				"DualPoint TouchPad" : "GlidePoint";
		psmouse->model = priv->proto_version;
	} else {
		/*
		 * Destroy alps_data structure we allocated earlier since
		 * this was just a "trial run". Otherwise we'll keep it
		 * to be used by alps_init() which has to be called if
		 * we succeed and set_properties is true.
		 */
		FUNC2(priv);
		psmouse->private = NULL;
	}

	return 0;
}