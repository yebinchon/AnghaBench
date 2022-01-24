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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  PDE0_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  RANGE_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  READ_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALID_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  VM_CONTEXT1_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_PROTECTION_FAULT_ENABLE_DEFAULT ; 
 int /*<<< orphan*/  mmVM_CONTEXT1_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
					      bool value)
{
	u32 tmp;

	tmp = FUNC1(mmVM_CONTEXT1_CNTL);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    VALID_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    READ_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	tmp = FUNC0(tmp, VM_CONTEXT1_CNTL,
			    EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, value);
	FUNC2(mmVM_CONTEXT1_CNTL, tmp);
}