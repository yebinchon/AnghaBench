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
struct TYPE_2__ {int stopped; int /*<<< orphan*/  wq; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  delay_timer; TYPE_1__ cache; int /*<<< orphan*/  async_ctx; } ;

/* Variables and functions */
 int MAX_MR_CACHE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*) ; 

int FUNC6(struct mlx5_ib_dev *dev)
{
	int i;

	if (!dev->cache.wq)
		return 0;

	dev->cache.stopped = 1;
	FUNC3(dev->cache.wq);

	FUNC5(dev);
	FUNC4(&dev->async_ctx);

	for (i = 0; i < MAX_MR_CACHE_ENTRIES; i++)
		FUNC0(dev, i);

	FUNC2(dev->cache.wq);
	FUNC1(&dev->delay_timer);

	return 0;
}