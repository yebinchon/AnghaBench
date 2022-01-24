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
struct mlx5_mr_cache {int /*<<< orphan*/  wq; scalar_t__ last_add; struct mlx5_cache_ent* ent; scalar_t__ stopped; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  fill_delay; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int cur; int limit; int /*<<< orphan*/  dwork; int /*<<< orphan*/  work; int /*<<< orphan*/  order; struct mlx5_ib_dev* dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int HZ ; 
 int FUNC0 (struct mlx5_ib_dev*,int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_mr_cache*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct mlx5_cache_ent *ent)
{
	struct mlx5_ib_dev *dev = ent->dev;
	struct mlx5_mr_cache *cache = &dev->cache;
	int i = FUNC5(dev, ent->order);
	int err;

	if (cache->stopped)
		return;

	ent = &dev->cache.ent[i];
	if (ent->cur < 2 * ent->limit && !dev->fill_delay) {
		err = FUNC0(dev, i, 1);
		if (ent->cur < 2 * ent->limit) {
			if (err == -EAGAIN) {
				FUNC1(dev, "returned eagain, order %d\n",
					    i + 2);
				FUNC6(cache->wq, &ent->dwork,
						   FUNC3(3));
			} else if (err) {
				FUNC2(dev, "command failed order %d, err %d\n",
					     i + 2, err);
				FUNC6(cache->wq, &ent->dwork,
						   FUNC3(1000));
			} else {
				FUNC7(cache->wq, &ent->work);
			}
		}
	} else if (ent->cur > 2 * ent->limit) {
		/*
		 * The remove_keys() logic is performed as garbage collection
		 * task. Such task is intended to be run when no other active
		 * processes are running.
		 *
		 * The need_resched() will return TRUE if there are user tasks
		 * to be activated in near future.
		 *
		 * In such case, we don't execute remove_keys() and postpone
		 * the garbage collection work to try to run in next cycle,
		 * in order to free CPU resources to other tasks.
		 */
		if (!FUNC4() && !FUNC9(cache) &&
		    FUNC10(jiffies, cache->last_add + 300 * HZ)) {
			FUNC8(dev, i, 1);
			if (ent->cur > ent->limit)
				FUNC7(cache->wq, &ent->work);
		} else {
			FUNC6(cache->wq, &ent->dwork, 300 * HZ);
		}
	}
}