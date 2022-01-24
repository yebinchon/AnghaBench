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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SRBM_STATUS2__VCE_BUSY_MASK ; 
 int /*<<< orphan*/  mmSRBM_STATUS2 ; 

__attribute__((used)) static bool FUNC1(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	return !(FUNC0(mmSRBM_STATUS2) & SRBM_STATUS2__VCE_BUSY_MASK);
}