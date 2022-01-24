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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMHUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMMVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ; 
 int /*<<< orphan*/  mmMMVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	uint64_t value = FUNC1(adev->gart.bo);

	FUNC0(MMHUB, 0, mmMMVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
		     FUNC2(value));

	FUNC0(MMHUB, 0, mmMMVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
		     FUNC3(value));
}