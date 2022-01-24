#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_5__* entries; } ;
struct TYPE_7__ {TYPE_1__ vddc_dependency_on_dispclk; } ;
struct TYPE_8__ {int num_ps; TYPE_2__ dyn_state; TYPE_5__* priv; TYPE_5__* ps; } ;
struct TYPE_9__ {TYPE_3__ dpm; } ;
struct radeon_device {TYPE_4__ pm; } ;
struct TYPE_10__ {struct TYPE_10__* ps_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 

void FUNC2(struct radeon_device *rdev)
{
	int i;

	for (i = 0; i < rdev->pm.dpm.num_ps; i++) {
		FUNC0(rdev->pm.dpm.ps[i].ps_priv);
	}
	FUNC0(rdev->pm.dpm.ps);
	FUNC0(rdev->pm.dpm.priv);
	FUNC0(rdev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries);
	FUNC1(rdev);
}