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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_iv_entry {int /*<<< orphan*/ * src_data; int /*<<< orphan*/  src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_VM_FAULT_STOP_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ amdgpu_vm_fault_stop ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_CNTL2 ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_PROTECTION_FAULT_ADDR ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *source,
				      struct amdgpu_iv_entry *entry)
{
	u32 addr, status;

	addr = FUNC0(mmVM_CONTEXT1_PROTECTION_FAULT_ADDR);
	status = FUNC0(mmVM_CONTEXT1_PROTECTION_FAULT_STATUS);
	FUNC1(mmVM_CONTEXT1_CNTL2, 1, ~1);

	if (!addr && !status)
		return 0;

	if (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_FIRST)
		FUNC3(adev, false);

	if (FUNC5()) {
		FUNC2(adev->dev, "GPU fault detected: %d 0x%08x\n",
			entry->src_id, entry->src_data[0]);
		FUNC2(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
			addr);
		FUNC2(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
			status);
		FUNC4(adev, status, addr, 0);
	}

	return 0;
}