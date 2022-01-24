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
struct ps2dev {int /*<<< orphan*/  wait; } ;
struct psmouse {int state; int pktcnt; int /*<<< orphan*/  packet; struct ps2dev ps2dev; } ;
typedef  enum psmouse_state { ____Placeholder_psmouse_state } psmouse_state ;

/* Variables and functions */
 unsigned char CYTP_CMD_READ_TP_METRICS ; 
 int /*<<< orphan*/  CYTP_CMD_TIMEOUT ; 
 int PSMOUSE_CMD_MODE ; 
 int FUNC0 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,char*,unsigned char,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct psmouse *psmouse,
				       unsigned char cmd,
				       unsigned char *param)
{
	int rc;
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	enum psmouse_state old_state;
	int pktsize;

	FUNC4(ps2dev);

	old_state = psmouse->state;
	psmouse->state = PSMOUSE_CMD_MODE;
	psmouse->pktcnt = 0;

	pktsize = (cmd == CYTP_CMD_READ_TP_METRICS) ? 8 : 3;
	FUNC2(param, 0, pktsize);

	rc = FUNC0(psmouse, 0xe9);
	if (rc < 0)
		goto out;

	FUNC7(ps2dev->wait,
			(psmouse->pktcnt >= pktsize),
			FUNC3(CYTP_CMD_TIMEOUT));

	FUNC1(param, psmouse->packet, pktsize);

	FUNC6(psmouse, "Command 0x%02x response data (0x): %*ph\n",
			cmd, pktsize, param);

out:
	psmouse->state = old_state;
	psmouse->pktcnt = 0;

	FUNC5(ps2dev);

	return rc;
}