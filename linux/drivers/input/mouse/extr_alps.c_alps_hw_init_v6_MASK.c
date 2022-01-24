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
 scalar_t__ FUNC0 (struct psmouse*) ; 
 scalar_t__ FUNC1 (struct psmouse*,int) ; 
 int FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse)
{
	int ret;

	/* Enter passthrough mode to let trackpoint enter 6byte raw mode */
	if (FUNC1(psmouse, true))
		return -1;

	ret = FUNC2(psmouse);

	if (FUNC1(psmouse, false))
		return -1;

	if (ret)
		return ret;

	if (FUNC0(psmouse)) {
		FUNC3(psmouse, "Failed to enable absolute mode\n");
		return -1;
	}

	return 0;
}