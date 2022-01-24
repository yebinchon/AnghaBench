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
struct cs_hsi_iface {int wakeline_state; TYPE_1__* cl; int /*<<< orphan*/  master; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cs_hsi_iface *hi, bool new_state)
{
	int change = 0;

	FUNC1(&hi->lock);
	if (hi->wakeline_state != new_state) {
		hi->wakeline_state = new_state;
		change = 1;
		FUNC0(&hi->cl->device, "setting wake line to %d (%p)\n",
			new_state, hi->cl);
	}
	FUNC2(&hi->lock);

	if (change) {
		if (new_state)
			FUNC3(hi->master);
		else
			FUNC4(hi->master);
	}

	FUNC0(&hi->cl->device, "wake line set to %d (%p)\n",
		new_state, hi->cl);
}