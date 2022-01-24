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
struct stripe_head {scalar_t__ overwrite_disks; scalar_t__ disks; TYPE_1__* raid_conf; } ;
struct TYPE_2__ {scalar_t__ max_degraded; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(struct stripe_head *sh)
{
	FUNC0(sh->overwrite_disks > (sh->disks - sh->raid_conf->max_degraded));
	return sh->overwrite_disks == (sh->disks - sh->raid_conf->max_degraded);
}