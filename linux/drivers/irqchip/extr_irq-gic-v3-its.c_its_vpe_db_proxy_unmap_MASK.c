#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct its_vpe {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  has_direct_lpi; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_2__* gic_rdists ; 
 int /*<<< orphan*/  FUNC0 (struct its_vpe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ vpe_proxy ; 

__attribute__((used)) static void FUNC3(struct its_vpe *vpe)
{
	if (!gic_rdists->has_direct_lpi) {
		unsigned long flags;

		FUNC1(&vpe_proxy.lock, flags);
		FUNC0(vpe);
		FUNC2(&vpe_proxy.lock, flags);
	}
}