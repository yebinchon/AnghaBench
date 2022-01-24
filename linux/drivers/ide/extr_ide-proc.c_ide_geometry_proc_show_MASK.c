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
struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int /*<<< orphan*/  bios_sect; int /*<<< orphan*/  bios_head; int /*<<< orphan*/  bios_cyl; int /*<<< orphan*/  sect; int /*<<< orphan*/  head; int /*<<< orphan*/  cyl; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct seq_file *m, void *v)
{
	ide_drive_t	*drive = (ide_drive_t *) m->private;

	FUNC0(m, "physical     %d/%d/%d\n",
			drive->cyl, drive->head, drive->sect);
	FUNC0(m, "logical      %d/%d/%d\n",
			drive->bios_cyl, drive->bios_head, drive->bios_sect);
	return 0;
}