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
struct psmouse {char* vendor; char* name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  focaltech_pnp_ids ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int /*<<< orphan*/ ) ; 

int FUNC1(struct psmouse *psmouse, bool set_properties)
{
	if (!FUNC0(psmouse, focaltech_pnp_ids))
		return -ENODEV;

	if (set_properties) {
		psmouse->vendor = "FocalTech";
		psmouse->name = "Touchpad";
	}

	return 0;
}