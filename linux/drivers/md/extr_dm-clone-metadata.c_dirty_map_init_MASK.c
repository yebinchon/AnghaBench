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
struct dm_clone_metadata {TYPE_1__* dmap; TYPE_1__* current_dmap; int /*<<< orphan*/  nr_words; } ;
struct TYPE_2__ {void* dirty_words; scalar_t__ changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dm_clone_metadata *cmd)
{
	cmd->dmap[0].changed = 0;
	cmd->dmap[0].dirty_words = FUNC3(FUNC1(cmd->nr_words), GFP_KERNEL);

	if (!cmd->dmap[0].dirty_words) {
		FUNC0("Failed to allocate dirty bitmap");
		return -ENOMEM;
	}

	cmd->dmap[1].changed = 0;
	cmd->dmap[1].dirty_words = FUNC3(FUNC1(cmd->nr_words), GFP_KERNEL);

	if (!cmd->dmap[1].dirty_words) {
		FUNC0("Failed to allocate dirty bitmap");
		FUNC2(cmd->dmap[0].dirty_words);
		return -ENOMEM;
	}

	cmd->current_dmap = &cmd->dmap[0];

	return 0;
}