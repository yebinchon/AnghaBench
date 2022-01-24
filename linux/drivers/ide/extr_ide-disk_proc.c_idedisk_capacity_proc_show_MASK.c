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
struct seq_file {scalar_t__ private; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,long long) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	ide_drive_t*drive = (ide_drive_t *)m->private;

	FUNC1(m, "%llu\n", (long long)FUNC0(drive));
	return 0;
}