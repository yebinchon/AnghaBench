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
 int /*<<< orphan*/  FUNC0 (struct psmouse*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 
 int FUNC3 (struct psmouse*) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse)
{
	int error;

	FUNC1(psmouse);
	FUNC2(psmouse);
	error = FUNC3(psmouse);
	if (error) {
		FUNC0(psmouse,
			    "Unable to re-enable mouse when reconnecting, err: %d\n",
			    error);
		return error;
	}

	return 0;
}