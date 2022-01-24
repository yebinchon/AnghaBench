#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct d40_desc {scalar_t__ lcla_alloc; } ;
struct d40_chan {TYPE_3__* base; TYPE_1__* phy_chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; struct d40_desc** alloc_map; } ;
struct TYPE_6__ {TYPE_2__ lcla_pool; } ;
struct TYPE_4__ {int num; } ;

/* Variables and functions */
 int D40_LCLA_LINK_PER_EVENT_GRP ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct d40_chan *d40c,
			     struct d40_desc *d40d)
{
	unsigned long flags;
	int i;
	int ret = -EINVAL;

	if (FUNC0(d40c))
		return 0;

	FUNC1(&d40c->base->lcla_pool.lock, flags);

	for (i = 1 ; i < D40_LCLA_LINK_PER_EVENT_GRP / 2; i++) {
		int idx = d40c->phy_chan->num * D40_LCLA_LINK_PER_EVENT_GRP + i;

		if (d40c->base->lcla_pool.alloc_map[idx] == d40d) {
			d40c->base->lcla_pool.alloc_map[idx] = NULL;
			d40d->lcla_alloc--;
			if (d40d->lcla_alloc == 0) {
				ret = 0;
				break;
			}
		}
	}

	FUNC2(&d40c->base->lcla_pool.lock, flags);

	return ret;

}