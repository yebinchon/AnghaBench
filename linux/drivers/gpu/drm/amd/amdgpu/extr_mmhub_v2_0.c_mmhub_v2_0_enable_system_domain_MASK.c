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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_CONTEXT ; 
 int /*<<< orphan*/  MMHUB ; 
 int /*<<< orphan*/  MMVM_CONTEXT0_CNTL ; 
 int /*<<< orphan*/  PAGE_TABLE_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMMVM_CONTEXT0_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	uint32_t tmp;

	tmp = FUNC1(MMHUB, 0, mmMMVM_CONTEXT0_CNTL);
	tmp = FUNC0(tmp, MMVM_CONTEXT0_CNTL, ENABLE_CONTEXT, 1);
	tmp = FUNC0(tmp, MMVM_CONTEXT0_CNTL, PAGE_TABLE_DEPTH, 0);
	FUNC2(MMHUB, 0, mmMMVM_CONTEXT0_CNTL, tmp);
}