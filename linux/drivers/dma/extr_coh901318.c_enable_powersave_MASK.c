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
struct powersave {unsigned long long started_channels; int /*<<< orphan*/  lock; } ;
struct coh901318_chan {unsigned long long id; TYPE_1__* base; } ;
struct TYPE_2__ {struct powersave pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct coh901318_chan *cohc)
{
	unsigned long flags;
	struct powersave *pm = &cohc->base->pm;

	FUNC0(&pm->lock, flags);

	pm->started_channels &= ~(1ULL << cohc->id);

	FUNC1(&pm->lock, flags);
}