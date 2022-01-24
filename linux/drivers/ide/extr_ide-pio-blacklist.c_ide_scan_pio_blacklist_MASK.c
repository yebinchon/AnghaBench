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
struct ide_pio_info {int pio; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 struct ide_pio_info* ide_pio_blacklist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC2(char *model)
{
	struct ide_pio_info *p;

	for (p = ide_pio_blacklist; p->name != NULL; p++) {
		if (FUNC1(p->name, model, FUNC0(p->name)) == 0)
			return p->pio;
	}
	return -1;
}