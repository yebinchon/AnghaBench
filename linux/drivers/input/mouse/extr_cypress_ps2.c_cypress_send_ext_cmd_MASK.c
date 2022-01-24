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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int EIO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRES ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct psmouse*,unsigned char,unsigned char*) ; 
 scalar_t__ FUNC6 (struct psmouse*,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,char*,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct psmouse *psmouse, unsigned char cmd,
				unsigned char *param)
{
	int tries = CYTP_PS2_CMD_TRIES;
	int rc;

	FUNC7(psmouse, "send extension cmd 0x%02x, [%d %d %d %d]\n",
		 cmd, FUNC0(cmd), FUNC1(cmd),
		 FUNC2(cmd), FUNC3(cmd));

	do {
		FUNC4(psmouse,
				    PSMOUSE_CMD_SETRES, FUNC3(cmd));
		FUNC4(psmouse,
				    PSMOUSE_CMD_SETRES, FUNC2(cmd));
		FUNC4(psmouse,
				    PSMOUSE_CMD_SETRES, FUNC1(cmd));
		FUNC4(psmouse,
				    PSMOUSE_CMD_SETRES, FUNC0(cmd));

		rc = FUNC5(psmouse, cmd, param);
		if (rc)
			continue;

		if (FUNC6(psmouse, cmd, param))
			return 0;

	} while (--tries > 0);

	return -EIO;
}