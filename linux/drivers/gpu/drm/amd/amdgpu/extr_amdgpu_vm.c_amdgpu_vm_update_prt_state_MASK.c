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
struct TYPE_6__ {int /*<<< orphan*/  prt_lock; int /*<<< orphan*/  num_prt_users; } ;
struct TYPE_5__ {TYPE_1__* gmc_funcs; } ;
struct amdgpu_device {TYPE_3__ vm_manager; TYPE_2__ gmc; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_prt ) (struct amdgpu_device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	unsigned long flags;
	bool enable;

	FUNC1(&adev->vm_manager.prt_lock, flags);
	enable = !!FUNC0(&adev->vm_manager.num_prt_users);
	adev->gmc.gmc_funcs->set_prt(adev, enable);
	FUNC2(&adev->vm_manager.prt_lock, flags);
}