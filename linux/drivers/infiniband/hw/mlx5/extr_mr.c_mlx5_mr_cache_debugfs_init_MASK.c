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
struct mlx5_mr_cache {void* root; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; scalar_t__ is_rep; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {char* name; int order; int /*<<< orphan*/  miss; int /*<<< orphan*/  cur; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {void* dbg_root; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int MAX_MR_CACHE_ENTRIES ; 
 void* FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mlx5_cache_ent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  limit_fops ; 
 int /*<<< orphan*/  mlx5_debugfs_root ; 
 int /*<<< orphan*/  size_fops ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct mlx5_ib_dev *dev)
{
	struct mlx5_mr_cache *cache = &dev->cache;
	struct mlx5_cache_ent *ent;
	struct dentry *dir;
	int i;

	if (!mlx5_debugfs_root || dev->is_rep)
		return;

	cache->root = FUNC0("mr_cache", dev->mdev->priv.dbg_root);

	for (i = 0; i < MAX_MR_CACHE_ENTRIES; i++) {
		ent = &cache->ent[i];
		FUNC3(ent->name, "%d", ent->order);
		dir = FUNC0(ent->name, cache->root);
		FUNC1("size", 0600, dir, ent, &size_fops);
		FUNC1("limit", 0600, dir, ent, &limit_fops);
		FUNC2("cur", 0400, dir, &ent->cur);
		FUNC2("miss", 0600, dir, &ent->miss);
	}
}