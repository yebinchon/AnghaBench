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
struct psmouse {int pktsize; int model; struct cytp_data* private; scalar_t__ resync_time; int /*<<< orphan*/  (* cleanup ) (struct psmouse*) ;int /*<<< orphan*/  reconnect; int /*<<< orphan*/  disconnect; int /*<<< orphan*/  set_rate; int /*<<< orphan*/  protocol_handler; int /*<<< orphan*/  dev; } ;
struct cytp_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cypress_disconnect ; 
 int /*<<< orphan*/  cypress_protocol_handler ; 
 scalar_t__ FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  cypress_reconnect ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct cytp_data*) ; 
 int /*<<< orphan*/  cypress_set_rate ; 
 int /*<<< orphan*/  FUNC4 (struct cytp_data*) ; 
 struct cytp_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,char*) ; 

int FUNC7(struct psmouse *psmouse)
{
	struct cytp_data *cytp;

	cytp = FUNC5(sizeof(struct cytp_data), GFP_KERNEL);
	if (!cytp)
		return -ENOMEM;

	psmouse->private = cytp;
	psmouse->pktsize = 8;

	FUNC1(psmouse);

	if (FUNC0(psmouse)) {
		FUNC6(psmouse, "Unable to query Trackpad hardware.\n");
		goto err_exit;
	}

	if (FUNC2(psmouse)) {
		FUNC6(psmouse, "init: Unable to initialize Cypress absolute mode.\n");
		goto err_exit;
	}

	if (FUNC3(psmouse->dev, cytp) < 0) {
		FUNC6(psmouse, "init: Unable to set input params.\n");
		goto err_exit;
	}

	psmouse->model = 1;
	psmouse->protocol_handler = cypress_protocol_handler;
	psmouse->set_rate = cypress_set_rate;
	psmouse->disconnect = cypress_disconnect;
	psmouse->reconnect = cypress_reconnect;
	psmouse->cleanup = cypress_reset;
	psmouse->resync_time = 0;

	return 0;

err_exit:
	/*
	 * Reset Cypress Trackpad as a standard mouse. Then
	 * let psmouse driver commmunicating with it as default PS2 mouse.
	 */
	FUNC1(psmouse);

	psmouse->private = NULL;
	FUNC4(cytp);

	return -1;
}