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
struct dm_clone_metadata {int /*<<< orphan*/  lock; int /*<<< orphan*/  bm; int /*<<< orphan*/  fail_io; int /*<<< orphan*/  bitmap_lock; scalar_t__ read_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dm_clone_metadata *cmd)
{
	unsigned long flags;

	FUNC1(&cmd->lock);

	FUNC2(&cmd->bitmap_lock, flags);
	cmd->read_only = 0;
	FUNC3(&cmd->bitmap_lock, flags);

	if (!cmd->fail_io)
		FUNC0(cmd->bm);

	FUNC4(&cmd->lock);
}