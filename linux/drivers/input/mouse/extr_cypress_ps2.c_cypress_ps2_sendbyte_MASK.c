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
struct ps2dev {scalar_t__ nak; } ;
struct psmouse {struct ps2dev ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYTP_CMD_TIMEOUT ; 
 int CYTP_PS2_ERROR ; 
 scalar_t__ CYTP_PS2_RETRY ; 
 scalar_t__ FUNC0 (struct ps2dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,char*,int,...) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse, int value)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;

	if (FUNC0(ps2dev, value & 0xff, CYTP_CMD_TIMEOUT) < 0) {
		FUNC1(psmouse,
				"sending command 0x%02x failed, resp 0x%02x\n",
				value & 0xff, ps2dev->nak);
		if (ps2dev->nak == CYTP_PS2_RETRY)
			return CYTP_PS2_RETRY;
		else
			return CYTP_PS2_ERROR;
	}

#ifdef CYTP_DEBUG_VERBOSE
	psmouse_dbg(psmouse, "sending command 0x%02x succeeded, resp 0xfa\n",
			value & 0xff);
#endif

	return 0;
}