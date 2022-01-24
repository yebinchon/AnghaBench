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
struct psmouse {struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_data {scalar_t__ proto_version; int flags; struct input_dev* dev3; int /*<<< orphan*/  dev3_register_work; struct input_dev* dev2; } ;

/* Variables and functions */
 int ALPS_DUALPOINT ; 
 scalar_t__ ALPS_PROTO_V2 ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,struct input_dev*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,unsigned char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct psmouse *psmouse,
					unsigned char packet[],
					bool report_buttons)
{
	struct alps_data *priv = psmouse->private;
	struct input_dev *dev, *dev2 = NULL;

	/* Figure out which device to use to report the bare packet */
	if (priv->proto_version == ALPS_PROTO_V2 &&
	    (priv->flags & ALPS_DUALPOINT)) {
		/* On V2 devices the DualPoint Stick reports bare packets */
		dev = priv->dev2;
		dev2 = psmouse->dev;
	} else if (FUNC6(FUNC1(priv->dev3))) {
		/* Register dev3 mouse if we received PS/2 packet first time */
		if (!FUNC0(priv->dev3))
			FUNC4(psmouse, &priv->dev3_register_work,
					   0);
		return;
	} else {
		dev = priv->dev3;
	}

	if (report_buttons)
		FUNC2(dev, dev2,
				packet[0] & 1, packet[0] & 2, packet[0] & 4);

	FUNC5(dev, packet);

	FUNC3(dev);
}