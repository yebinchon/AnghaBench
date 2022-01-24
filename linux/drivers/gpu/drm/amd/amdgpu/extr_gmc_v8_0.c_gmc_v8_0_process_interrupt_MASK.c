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
typedef  int u32 ;
struct kfd_vm_fault_info {int vmid; int status; int page_addr; int prot_valid; int prot_read; int prot_write; int prot_exec; void* mc_id; } ;
struct amdgpu_task_info {int /*<<< orphan*/  pid; int /*<<< orphan*/  task_name; int /*<<< orphan*/  tgid; int /*<<< orphan*/  process_name; } ;
struct amdgpu_iv_entry {int /*<<< orphan*/  pasid; int /*<<< orphan*/ * src_data; int /*<<< orphan*/  src_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm_fault_info_updated; struct kfd_vm_fault_info* vm_fault_info; } ;
struct amdgpu_device {TYPE_1__ gmc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_VM_FAULT_STOP_FIRST ; 
 int /*<<< orphan*/  MEMORY_CLIENT_ID ; 
 int /*<<< orphan*/  PROTECTIONS ; 
 void* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMID ; 
 int /*<<< orphan*/  VM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 scalar_t__ amdgpu_vm_fault_stop ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int /*<<< orphan*/ ,struct amdgpu_task_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_task_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_CNTL2 ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_PROTECTION_FAULT_ADDR ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 scalar_t__ FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct amdgpu_device *adev,
				      struct amdgpu_irq_src *source,
				      struct amdgpu_iv_entry *entry)
{
	u32 addr, status, mc_client, vmid;

	if (FUNC4(adev)) {
		FUNC8(adev->dev, "GPU fault detected: %d 0x%08x\n",
			entry->src_id, entry->src_data[0]);
		FUNC8(adev->dev, " Can't decode VM fault info here on SRIOV VF\n");
		return 0;
	}

	addr = FUNC1(mmVM_CONTEXT1_PROTECTION_FAULT_ADDR);
	status = FUNC1(mmVM_CONTEXT1_PROTECTION_FAULT_STATUS);
	mc_client = FUNC1(mmVM_CONTEXT1_PROTECTION_FAULT_MCCLIENT);
	/* reset addr and status */
	FUNC2(mmVM_CONTEXT1_CNTL2, 1, ~1);

	if (!addr && !status)
		return 0;

	if (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_FIRST)
		FUNC9(adev, false);

	if (FUNC13()) {
		struct amdgpu_task_info task_info;

		FUNC12(&task_info, 0, sizeof(struct amdgpu_task_info));
		FUNC5(adev, entry->pasid, &task_info);

		FUNC8(adev->dev, "GPU fault detected: %d 0x%08x for process %s pid %d thread %s pid %d\n",
			entry->src_id, entry->src_data[0], task_info.process_name,
			task_info.tgid, task_info.task_name, task_info.pid);
		FUNC8(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
			addr);
		FUNC8(adev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
			status);
		FUNC10(adev, status, addr, mc_client,
					 entry->pasid);
	}

	vmid = FUNC0(status, VM_CONTEXT1_PROTECTION_FAULT_STATUS,
			     VMID);
	if (FUNC3(adev, vmid)
		&& !FUNC6(&adev->gmc.vm_fault_info_updated)) {
		struct kfd_vm_fault_info *info = adev->gmc.vm_fault_info;
		u32 protections = FUNC0(status,
					VM_CONTEXT1_PROTECTION_FAULT_STATUS,
					PROTECTIONS);

		info->vmid = vmid;
		info->mc_id = FUNC0(status,
					    VM_CONTEXT1_PROTECTION_FAULT_STATUS,
					    MEMORY_CLIENT_ID);
		info->status = status;
		info->page_addr = addr;
		info->prot_valid = protections & 0x7 ? true : false;
		info->prot_read = protections & 0x8 ? true : false;
		info->prot_write = protections & 0x10 ? true : false;
		info->prot_exec = protections & 0x20 ? true : false;
		FUNC11();
		FUNC7(&adev->gmc.vm_fault_info_updated, 1);
	}

	return 0;
}