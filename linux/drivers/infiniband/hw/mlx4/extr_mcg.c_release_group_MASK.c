#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_demux_ctx {int /*<<< orphan*/  mcg_table_lock; int /*<<< orphan*/  mcg_table; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mgid; } ;
struct mcast_group {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  mgid0_list; int /*<<< orphan*/  node; int /*<<< orphan*/  pending_list; TYPE_2__ dentry; TYPE_1__ rec; int /*<<< orphan*/  refcount; int /*<<< orphan*/  timeout_work; struct mlx4_ib_demux_ctx* demux; } ;

/* Variables and functions */
 scalar_t__ MCAST_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mcast_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mcast_group*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mgid0 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct mcast_group *group, int from_timeout_handler)
{
	struct mlx4_ib_demux_ctx *ctx = group->demux;
	int nzgroup;

	FUNC9(&ctx->mcg_table_lock);
	FUNC9(&group->lock);
	if (FUNC0(&group->refcount)) {
		if (!from_timeout_handler) {
			if (group->state != MCAST_IDLE &&
			    !FUNC2(&group->timeout_work)) {
				FUNC1(&group->refcount);
				FUNC10(&group->lock);
				FUNC10(&ctx->mcg_table_lock);
				return 0;
			}
		}

		nzgroup = FUNC8(&group->rec.mgid, &mgid0, sizeof mgid0);
		if (nzgroup)
			FUNC3(ctx->dev, ctx->port, &group->dentry.attr);
		if (!FUNC6(&group->pending_list))
			FUNC7(group, "releasing a group with non empty pending list\n");
		if (nzgroup)
			FUNC11(&group->node, &ctx->mcg_table);
		FUNC5(&group->mgid0_list);
		FUNC10(&group->lock);
		FUNC10(&ctx->mcg_table_lock);
		FUNC4(group);
		return 1;
	} else {
		FUNC10(&group->lock);
		FUNC10(&ctx->mcg_table_lock);
	}
	return 0;
}