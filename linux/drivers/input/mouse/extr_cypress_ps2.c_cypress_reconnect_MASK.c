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
struct psmouse {int dummy; } ;

/* Variables and functions */
 int CYTP_PS2_CMD_TRIES ; 
 int FUNC0 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse)
{
	int tries = CYTP_PS2_CMD_TRIES;
	int rc;

	do {
		FUNC1(psmouse);
		rc = FUNC0(psmouse, false);
	} while (rc && (--tries > 0));

	if (rc) {
		FUNC3(psmouse, "Reconnect: unable to detect trackpad.\n");
		return -1;
	}

	if (FUNC2(psmouse)) {
		FUNC3(psmouse, "Reconnect: Unable to initialize Cypress absolute mode.\n");
		return -1;
	}

	return 0;
}