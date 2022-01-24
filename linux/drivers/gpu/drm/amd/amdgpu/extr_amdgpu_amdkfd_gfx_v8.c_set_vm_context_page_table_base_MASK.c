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
typedef  scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,scalar_t__) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct kgd_dev *kgd, uint32_t vmid,
		uint64_t page_table_base)
{
	struct amdgpu_device *adev = FUNC2(kgd);

	if (!FUNC1(adev, vmid)) {
		FUNC4("trying to set page table base for wrong VMID\n");
		return;
	}
	FUNC0(mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR + vmid - 8,
			FUNC3(page_table_base));
}