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
struct ide_tape_obj {int /*<<< orphan*/  dev; int /*<<< orphan*/ * drive; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idetape_ref_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ide_tape_obj *tape)
{
	ide_drive_t *drive = tape->drive;

	FUNC1(&idetape_ref_mutex);
	FUNC3(&tape->dev);
	FUNC0(drive);
	FUNC2(&idetape_ref_mutex);
}