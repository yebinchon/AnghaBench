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
struct dm_clone_metadata {int /*<<< orphan*/  bitmap_lock; TYPE_1__* dmap; } ;
struct TYPE_2__ {scalar_t__ changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC2(struct dm_clone_metadata *cmd)
{
	bool r;
	unsigned long flags;

	FUNC0(&cmd->bitmap_lock, flags);
	r = cmd->dmap[0].changed || cmd->dmap[1].changed;
	FUNC1(&cmd->bitmap_lock, flags);

	return r;
}