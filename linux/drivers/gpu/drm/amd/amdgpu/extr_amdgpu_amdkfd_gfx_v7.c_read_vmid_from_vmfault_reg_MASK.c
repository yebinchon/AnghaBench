#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMID ; 
 int /*<<< orphan*/  VM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_PROTECTION_FAULT_STATUS ; 

__attribute__((used)) static uint32_t FUNC3(struct kgd_dev *kgd)
{
	struct amdgpu_device *adev = FUNC2(kgd);

	uint32_t status = FUNC1(mmVM_CONTEXT1_PROTECTION_FAULT_STATUS);

	return FUNC0(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS, VMID);
}