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
struct kgd_dev {int dummy; } ;
struct kfd_vm_fault_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm_fault_info_updated; struct kfd_vm_fault_info* vm_fault_info; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct kgd_dev *kgd,
					      struct kfd_vm_fault_info *mem)
{
	struct amdgpu_device *adev;

	adev = (struct amdgpu_device *)kgd;
	if (FUNC0(&adev->gmc.vm_fault_info_updated) == 1) {
		*mem = *adev->gmc.vm_fault_info;
		FUNC2();
		FUNC1(&adev->gmc.vm_fault_info_updated, 0);
	}
	return 0;
}