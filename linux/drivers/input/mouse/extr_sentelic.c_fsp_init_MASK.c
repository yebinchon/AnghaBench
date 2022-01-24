#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int pktsize; struct fsp_data* private; TYPE_3__ ps2dev; int /*<<< orphan*/  cleanup; int /*<<< orphan*/  reconnect; int /*<<< orphan*/  disconnect; int /*<<< orphan*/  protocol_handler; } ;
struct fsp_data {int ver; int rev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FSP_VER_STL3888_C0 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  fsp_attribute_group ; 
 int /*<<< orphan*/  fsp_disconnect ; 
 int /*<<< orphan*/  fsp_drv_ver ; 
 scalar_t__ FUNC1 (struct psmouse*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int*) ; 
 scalar_t__ FUNC3 (struct psmouse*,int*) ; 
 int /*<<< orphan*/  fsp_process_byte ; 
 int /*<<< orphan*/  fsp_reconnect ; 
 int /*<<< orphan*/  fsp_reset ; 
 int FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsp_data*) ; 
 struct fsp_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*,char*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(struct psmouse *psmouse)
{
	struct fsp_data *priv;
	int ver, rev, sn = 0;
	int error;

	if (FUNC3(psmouse, &ver) ||
	    FUNC1(psmouse, &rev)) {
		return -ENODEV;
	}
	if (ver >= FSP_VER_STL3888_C0) {
		/* firmware information is only available since C0 */
		FUNC2(psmouse, &sn);
	}

	FUNC8(psmouse,
		     "Finger Sensing Pad, hw: %d.%d.%d, sn: %x, sw: %s\n",
		     ver >> 4, ver & 0x0F, rev, sn, fsp_drv_ver);

	psmouse->private = priv = FUNC6(sizeof(struct fsp_data), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->ver = ver;
	priv->rev = rev;

	psmouse->protocol_handler = fsp_process_byte;
	psmouse->disconnect = fsp_disconnect;
	psmouse->reconnect = fsp_reconnect;
	psmouse->cleanup = fsp_reset;
	psmouse->pktsize = 4;

	error = FUNC0(psmouse);
	if (error)
		goto err_out;

	/* Set up various supported input event bits */
	error = FUNC4(psmouse);
	if (error)
		goto err_out;

	error = FUNC9(&psmouse->ps2dev.serio->dev.kobj,
				   &fsp_attribute_group);
	if (error) {
		FUNC7(psmouse,
			    "Failed to create sysfs attributes (%d)", error);
		goto err_out;
	}

	return 0;

 err_out:
	FUNC5(psmouse->private);
	psmouse->private = NULL;
	return error;
}