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
 int FUNC0 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse)
{
	int retry = 0, error = 0;

	FUNC2(psmouse, "Reconnect\n");
	do {
		FUNC4(psmouse);
		if (retry)
			FUNC5(1);
		error = FUNC0(psmouse, 0);
	} while (error && ++retry < 3);

	if (error)
		return error;

	FUNC2(psmouse, "Reconnected after %d attempts\n", retry);

	error = FUNC1(psmouse);
	if (error) {
		FUNC3(psmouse, "Unable to initialize device\n");
		return error;
	}

	return 0;
}