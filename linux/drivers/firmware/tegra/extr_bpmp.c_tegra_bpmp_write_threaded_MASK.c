#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tegra_bpmp_channel {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  allocated; int /*<<< orphan*/  busy; } ;
struct tegra_bpmp {TYPE_4__ threaded; int /*<<< orphan*/  lock; struct tegra_bpmp_channel* threaded_channels; TYPE_3__* soc; } ;
struct TYPE_5__ {unsigned long timeout; unsigned int count; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;
struct TYPE_7__ {TYPE_2__ channels; } ;

/* Variables and functions */
 int EBUSY ; 
 struct tegra_bpmp_channel* FUNC0 (int) ; 
 int MSG_ACK ; 
 int MSG_RING ; 
 int FUNC1 (struct tegra_bpmp_channel*,unsigned int,int,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_bpmp_channel*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 

__attribute__((used)) static struct tegra_bpmp_channel *
FUNC11(struct tegra_bpmp *bpmp, unsigned int mrq,
			  const void *data, size_t size)
{
	unsigned long timeout = bpmp->soc->channels.thread.timeout;
	unsigned int count = bpmp->soc->channels.thread.count;
	struct tegra_bpmp_channel *channel;
	unsigned long flags;
	unsigned int index;
	int err;

	err = FUNC3(&bpmp->threaded.lock, FUNC10(timeout));
	if (err < 0)
		return FUNC0(err);

	FUNC6(&bpmp->lock, flags);

	index = FUNC4(bpmp->threaded.allocated, count);
	if (index == count) {
		err = -EBUSY;
		goto unlock;
	}

	channel = &bpmp->threaded_channels[index];

	if (!FUNC8(channel)) {
		err = -EBUSY;
		goto unlock;
	}

	FUNC5(index, bpmp->threaded.allocated);

	err = FUNC1(channel, mrq, MSG_ACK | MSG_RING,
					 data, size);
	if (err < 0)
		goto clear_allocated;

	FUNC5(index, bpmp->threaded.busy);

	FUNC7(&bpmp->lock, flags);
	return channel;

clear_allocated:
	FUNC2(index, bpmp->threaded.allocated);
unlock:
	FUNC7(&bpmp->lock, flags);
	FUNC9(&bpmp->threaded.lock);

	return FUNC0(err);
}