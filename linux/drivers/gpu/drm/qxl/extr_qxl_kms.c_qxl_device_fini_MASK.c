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
struct qxl_device {int /*<<< orphan*/ * rom; int /*<<< orphan*/ * ram_header; int /*<<< orphan*/  vram_mapping; int /*<<< orphan*/  surface_mapping; int /*<<< orphan*/  release_ring; int /*<<< orphan*/  cursor_ring; int /*<<< orphan*/  command_ring; int /*<<< orphan*/  gc_work; int /*<<< orphan*/ * current_release_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct qxl_device *qdev)
{
	FUNC4(&qdev->current_release_bo[0]);
	FUNC4(&qdev->current_release_bo[1]);
	FUNC0(&qdev->gc_work);
	FUNC6(qdev->command_ring);
	FUNC6(qdev->cursor_ring);
	FUNC6(qdev->release_ring);
	FUNC5(qdev);
	FUNC3(qdev);
	FUNC1(qdev->surface_mapping);
	FUNC1(qdev->vram_mapping);
	FUNC2(qdev->ram_header);
	FUNC2(qdev->rom);
	qdev->rom = NULL;
}