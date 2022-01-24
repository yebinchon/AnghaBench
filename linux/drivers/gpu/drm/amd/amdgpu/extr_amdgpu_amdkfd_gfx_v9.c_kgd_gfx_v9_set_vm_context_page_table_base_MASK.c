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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;

/* Variables and functions */
 scalar_t__ CHIP_ARCTURUS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct amdgpu_device* FUNC1 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6(struct kgd_dev *kgd, uint32_t vmid,
		uint64_t page_table_base)
{
	struct amdgpu_device *adev = FUNC1(kgd);

	if (!FUNC0(adev, vmid)) {
		FUNC5("trying to set page table base for wrong VMID %u\n",
		       vmid);
		return;
	}

	/* TODO: take advantage of per-process address space size. For
	 * now, all processes share the same address space size, like
	 * on GFX8 and older.
	 */
	if (adev->asic_type == CHIP_ARCTURUS) {
		/* Two MMHUBs */
		FUNC4(adev, 0, vmid, page_table_base);
		FUNC4(adev, 1, vmid, page_table_base);
	} else
		FUNC3(adev, vmid, page_table_base);

	FUNC2(adev, vmid, page_table_base);
}