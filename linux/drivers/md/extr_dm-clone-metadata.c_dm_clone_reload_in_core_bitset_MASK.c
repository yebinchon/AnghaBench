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
struct dm_clone_metadata {int /*<<< orphan*/  lock; scalar_t__ fail_io; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dm_clone_metadata *cmd)
{
	int r = -EINVAL;

	FUNC1(&cmd->lock);

	if (cmd->fail_io)
		goto out;

	r = FUNC0(cmd);
out:
	FUNC2(&cmd->lock);

	return r;
}