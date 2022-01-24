#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct serio {int /*<<< orphan*/ * firmware_id; } ;
struct TYPE_2__ {struct serio* serio; } ;
struct psmouse {TYPE_1__ ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const* const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (char**,char*) ; 

bool FUNC5(struct psmouse *psmouse, const char * const ids[])
{
	struct serio *serio = psmouse->ps2dev.serio;
	char *p, *fw_id_copy, *save_ptr;
	bool found = false;

	if (FUNC3(serio->firmware_id, "PNP: ", 5))
		return false;

	fw_id_copy = FUNC1(&serio->firmware_id[5],
			      sizeof(serio->firmware_id) - 5,
			      GFP_KERNEL);
	if (!fw_id_copy)
		return false;

	save_ptr = fw_id_copy;
	while ((p = FUNC4(&fw_id_copy, " ")) != NULL) {
		if (FUNC2(p, ids)) {
			found = true;
			break;
		}
	}

	FUNC0(save_ptr);
	return found;
}