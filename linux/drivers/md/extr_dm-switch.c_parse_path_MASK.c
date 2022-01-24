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
struct switch_ctx {size_t nr_paths; TYPE_1__* path_list; } ;
struct dm_target {char* error; int /*<<< orphan*/  table; struct switch_ctx* private; } ;
struct dm_arg_set {int dummy; } ;
typedef  unsigned long long sector_t ;
struct TYPE_2__ {unsigned long long start; int /*<<< orphan*/  dmdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,unsigned long long*) ; 

__attribute__((used)) static int FUNC5(struct dm_arg_set *as, struct dm_target *ti)
{
	struct switch_ctx *sctx = ti->private;
	unsigned long long start;
	int r;

	r = FUNC0(ti, FUNC2(as), FUNC3(ti->table),
			  &sctx->path_list[sctx->nr_paths].dmdev);
	if (r) {
		ti->error = "Device lookup failed";
		return r;
	}

	if (FUNC4(FUNC2(as), 10, &start) || start != (sector_t)start) {
		ti->error = "Invalid device starting offset";
		FUNC1(ti, sctx->path_list[sctx->nr_paths].dmdev);
		return -EINVAL;
	}

	sctx->path_list[sctx->nr_paths].start = start;

	sctx->nr_paths++;

	return 0;
}