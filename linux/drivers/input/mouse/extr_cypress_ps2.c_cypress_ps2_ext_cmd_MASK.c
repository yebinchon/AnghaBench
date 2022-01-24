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
struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;

/* Variables and functions */
 int CYTP_PS2_CMD_TRIES ; 
 int CYTP_PS2_ERROR ; 
 int CYTP_PS2_RETRY ; 
 int FUNC0 (struct psmouse*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse, unsigned short cmd,
			       unsigned char data)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	int tries = CYTP_PS2_CMD_TRIES;
	int rc;

	FUNC1(ps2dev);

	do {
		/*
		 * Send extension command byte (0xE8 or 0xF3).
		 * If sending the command fails, send recovery command
		 * to make the device return to the ready state.
		 */
		rc = FUNC0(psmouse, cmd & 0xff);
		if (rc == CYTP_PS2_RETRY) {
			rc = FUNC0(psmouse, 0x00);
			if (rc == CYTP_PS2_RETRY)
				rc = FUNC0(psmouse, 0x0a);
		}
		if (rc == CYTP_PS2_ERROR)
			continue;

		rc = FUNC0(psmouse, data);
		if (rc == CYTP_PS2_RETRY)
			rc = FUNC0(psmouse, data);
		if (rc == CYTP_PS2_ERROR)
			continue;
		else
			break;
	} while (--tries > 0);

	FUNC2(ps2dev);

	return rc;
}