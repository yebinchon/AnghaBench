#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {TYPE_2__ global; } ;
struct mlx4_ib_demux_ctx {int /*<<< orphan*/  port; int /*<<< orphan*/  dev; int /*<<< orphan*/  mcg_mgid0_list; } ;
struct TYPE_11__ {int mode; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_5__ attr; int /*<<< orphan*/ * store; int /*<<< orphan*/  show; } ;
struct TYPE_9__ {union ib_gid mgid; } ;
struct mcast_group {int /*<<< orphan*/  refcount; TYPE_4__ dentry; int /*<<< orphan*/  name; int /*<<< orphan*/  mgid0_list; int /*<<< orphan*/  state; TYPE_3__ rec; int /*<<< orphan*/  lock; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  work; TYPE_1__* func; int /*<<< orphan*/  pending_list; struct mlx4_ib_demux_ctx* demux; } ;
struct TYPE_7__ {int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mcast_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_VFS ; 
 int /*<<< orphan*/  MCAST_IDLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mcast_group*) ; 
 struct mcast_group* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mcast_group* FUNC10 (struct mlx4_ib_demux_ctx*,union ib_gid*) ; 
 struct mcast_group* FUNC11 (struct mlx4_ib_demux_ctx*,struct mcast_group*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,union ib_gid*,int) ; 
 int /*<<< orphan*/  mgid0 ; 
 int /*<<< orphan*/  mlx4_ib_mcg_timeout_handler ; 
 int /*<<< orphan*/  mlx4_ib_mcg_work_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  sysfs_show_group ; 

__attribute__((used)) static struct mcast_group *FUNC17(struct mlx4_ib_demux_ctx *ctx,
					 union ib_gid *mgid, int create)
{
	struct mcast_group *group, *cur_group;
	int is_mgid0;
	int i;

	is_mgid0 = !FUNC13(&mgid0, mgid, sizeof mgid0);
	if (!is_mgid0) {
		group = FUNC10(ctx, mgid);
		if (group)
			goto found;
	}

	if (!create)
		return FUNC0(-ENOENT);

	group = FUNC8(sizeof(*group), GFP_KERNEL);
	if (!group)
		return FUNC0(-ENOMEM);

	group->demux = ctx;
	group->rec.mgid = *mgid;
	FUNC2(&group->pending_list);
	FUNC2(&group->mgid0_list);
	for (i = 0; i < MAX_VFS; ++i)
		FUNC2(&group->func[i].pending);
	FUNC3(&group->work, mlx4_ib_mcg_work_handler);
	FUNC1(&group->timeout_work, mlx4_ib_mcg_timeout_handler);
	FUNC14(&group->lock);
	FUNC15(group->name, "%016llx%016llx",
			FUNC6(group->rec.mgid.global.subnet_prefix),
			FUNC6(group->rec.mgid.global.interface_id));
	FUNC16(&group->dentry.attr);
	group->dentry.show = sysfs_show_group;
	group->dentry.store = NULL;
	group->dentry.attr.name = group->name;
	group->dentry.attr.mode = 0400;
	group->state = MCAST_IDLE;

	if (is_mgid0) {
		FUNC9(&group->mgid0_list, &ctx->mcg_mgid0_list);
		goto found;
	}

	cur_group = FUNC11(ctx, group);
	if (cur_group) {
		FUNC12("group just showed up %s - confused\n", cur_group->name);
		FUNC7(group);
		return FUNC0(-EINVAL);
	}

	FUNC4(ctx->dev, ctx->port, &group->dentry.attr);

found:
	FUNC5(&group->refcount);
	return group;
}