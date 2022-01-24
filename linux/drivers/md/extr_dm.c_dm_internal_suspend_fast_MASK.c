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
struct mapped_device {int /*<<< orphan*/  wq; int /*<<< orphan*/  io_barrier; int /*<<< orphan*/  flags; int /*<<< orphan*/  suspend_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_BLOCK_IO_FOR_SUSPEND ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC0 (struct mapped_device*) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct mapped_device *md)
{
	FUNC4(&md->suspend_lock);
	if (FUNC1(md) || FUNC0(md))
		return;

	FUNC5(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
	FUNC6(&md->io_barrier);
	FUNC3(md->wq);
	FUNC2(md, TASK_UNINTERRUPTIBLE);
}