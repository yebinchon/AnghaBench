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
typedef  int /*<<< orphan*/  u32 ;
struct host1x {int /*<<< orphan*/  intr_syncpt_irq; int /*<<< orphan*/  dev; TYPE_3__* syncpt; TYPE_1__* info; } ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_6__ {TYPE_2__ intr; } ;
struct TYPE_4__ {unsigned int nb_pts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct host1x*) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x*) ; 
 int /*<<< orphan*/  FUNC4 (struct host1x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syncpt_thresh_isr ; 

__attribute__((used)) static int
FUNC5(struct host1x *host, u32 cpm,
			    void (*syncpt_thresh_work)(struct work_struct *))
{
	unsigned int i;
	int err;

	FUNC3(host);

	for (i = 0; i < host->info->nb_pts; i++)
		FUNC0(&host->syncpt[i].intr.work, syncpt_thresh_work);

	err = FUNC2(host->dev, host->intr_syncpt_irq,
			       syncpt_thresh_isr, IRQF_SHARED,
			       "host1x_syncpt", host);
	if (err < 0) {
		FUNC1(1);
		return err;
	}

	FUNC4(host, cpm);

	return 0;
}