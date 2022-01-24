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
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(ide_drive_t *drive)
{
	int rc;

	/*
	 * Force DMAing for the beginning of the check.
	 * Some chipsets appear to do interesting
	 * things, if not checked and cleared.
	 *   PARANOIA!!!
	 */
	FUNC1(drive);

	rc = FUNC0(drive);
	if (rc)
		return rc;

	FUNC2(drive);

	return 0;
}