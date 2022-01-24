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
typedef  unsigned int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  thresh_irq_name; int /*<<< orphan*/  wait_head; int /*<<< orphan*/  lock; } ;
struct host1x_syncpt {TYPE_1__ intr; } ;
struct host1x {unsigned int intr_syncpt_irq; struct host1x_syncpt* syncpt; int /*<<< orphan*/  intr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x*) ; 
 unsigned int FUNC2 (struct host1x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct host1x *host, unsigned int irq_sync)
{
	unsigned int id;
	u32 nb_pts = FUNC2(host);

	FUNC3(&host->intr_mutex);
	host->intr_syncpt_irq = irq_sync;

	for (id = 0; id < nb_pts; ++id) {
		struct host1x_syncpt *syncpt = host->syncpt + id;

		FUNC5(&syncpt->intr.lock);
		FUNC0(&syncpt->intr.wait_head);
		FUNC4(syncpt->intr.thresh_irq_name,
			 sizeof(syncpt->intr.thresh_irq_name),
			 "host1x_sp_%02u", id);
	}

	FUNC1(host);

	return 0;
}