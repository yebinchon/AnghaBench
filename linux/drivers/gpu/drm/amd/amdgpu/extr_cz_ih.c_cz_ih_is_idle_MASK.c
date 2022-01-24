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
 int /*<<< orphan*/  IH_BUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRBM_STATUS ; 
 int /*<<< orphan*/  mmSRBM_STATUS ; 

__attribute__((used)) static bool FUNC2(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 tmp = FUNC1(mmSRBM_STATUS);

	if (FUNC0(tmp, SRBM_STATUS, IH_BUSY))
		return false;

	return true;
}