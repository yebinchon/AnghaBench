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
 int /*<<< orphan*/  GENERAL_PWRMGT__GLOBAL_PWRMGT_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  ixGENERAL_PWRMGT ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	u32 tmp = FUNC0(ixGENERAL_PWRMGT);

	tmp |= GENERAL_PWRMGT__GLOBAL_PWRMGT_EN_MASK;
	FUNC1(ixGENERAL_PWRMGT, tmp);

	FUNC2(adev, true);
}