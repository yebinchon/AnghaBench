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
struct tegra_bpmp_channel {struct tegra_bpmp* bpmp; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  allocated; } ;
struct tegra_bpmp {TYPE_1__ threaded; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct tegra_bpmp_channel*,void*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct tegra_bpmp_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct tegra_bpmp_channel *channel,
				       void *data, size_t size, int *ret)
{
	struct tegra_bpmp *bpmp = channel->bpmp;
	unsigned long flags;
	ssize_t err;
	int index;

	index = FUNC4(channel);
	if (index < 0) {
		err = index;
		goto unlock;
	}

	FUNC2(&bpmp->lock, flags);
	err = FUNC0(channel, data, size, ret);
	FUNC1(index, bpmp->threaded.allocated);
	FUNC3(&bpmp->lock, flags);

unlock:
	FUNC5(&bpmp->threaded.lock);

	return err;
}