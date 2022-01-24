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
struct mlx5_mr_cache {int /*<<< orphan*/  wq; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_mr {int allocated_from_cache; int /*<<< orphan*/  list; int /*<<< orphan*/  order; } ;
struct mlx5_ib_dev {struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int cur; int limit; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int MAX_MR_CACHE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 

void FUNC8(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
	struct mlx5_mr_cache *cache = &dev->cache;
	struct mlx5_cache_ent *ent;
	int shrink = 0;
	int c;

	if (!mr->allocated_from_cache)
		return;

	c = FUNC3(dev, mr->order);
	FUNC0(c < 0 || c >= MAX_MR_CACHE_ENTRIES);

	if (FUNC7(dev, mr)) {
		mr->allocated_from_cache = false;
		FUNC1(dev, mr);
		ent = &cache->ent[c];
		if (ent->cur < ent->limit)
			FUNC4(cache->wq, &ent->work);
		return;
	}

	ent = &cache->ent[c];
	FUNC5(&ent->lock);
	FUNC2(&mr->list, &ent->head);
	ent->cur++;
	if (ent->cur > 2 * ent->limit)
		shrink = 1;
	FUNC6(&ent->lock);

	if (shrink)
		FUNC4(cache->wq, &ent->work);
}