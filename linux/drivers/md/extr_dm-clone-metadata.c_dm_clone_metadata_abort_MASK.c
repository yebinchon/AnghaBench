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
struct dm_clone_metadata {int fail_io; int /*<<< orphan*/  lock; int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct dm_clone_metadata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_clone_metadata*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct dm_clone_metadata *cmd)
{
	int r = -EPERM;

	FUNC3(&cmd->lock);

	if (cmd->fail_io || FUNC2(cmd->bm))
		goto out;

	FUNC1(cmd);

	r = FUNC0(cmd, false);
	if (r) {
		/* If something went wrong we can neither write nor read the metadata */
		cmd->fail_io = true;
	}
out:
	FUNC4(&cmd->lock);

	return r;
}