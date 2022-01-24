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
struct trackpoint_data {scalar_t__ variant_id; } ;
struct psmouse {int /*<<< orphan*/  ps2dev; struct trackpoint_data* private; } ;

/* Variables and functions */
 scalar_t__ TP_VARIANT_IBM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct psmouse*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct psmouse*,int) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse)
{
	struct trackpoint_data *tp = psmouse->private;
	int error;
	bool was_reset;

	error = FUNC1(psmouse, NULL, NULL);
	if (error)
		return error;

	was_reset = tp->variant_id == TP_VARIANT_IBM &&
		    FUNC0(&psmouse->ps2dev) == 0;

	error = FUNC2(psmouse, was_reset);
	if (error)
		return error;

	return 0;
}