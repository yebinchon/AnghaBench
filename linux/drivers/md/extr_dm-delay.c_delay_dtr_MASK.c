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
struct dm_target {struct delay_c* private; } ;
struct TYPE_5__ {scalar_t__ dev; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct TYPE_6__ {scalar_t__ dev; } ;
struct delay_c {int /*<<< orphan*/  timer_lock; TYPE_2__ flush; TYPE_1__ write; TYPE_3__ read; scalar_t__ kdelayd_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct delay_c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dm_target *ti)
{
	struct delay_c *dc = ti->private;

	if (dc->kdelayd_wq)
		FUNC0(dc->kdelayd_wq);

	if (dc->read.dev)
		FUNC1(ti, dc->read.dev);
	if (dc->write.dev)
		FUNC1(ti, dc->write.dev);
	if (dc->flush.dev)
		FUNC1(ti, dc->flush.dev);

	FUNC3(&dc->timer_lock);

	FUNC2(dc);
}