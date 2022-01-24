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
struct amdgpu_device {int /*<<< orphan*/  uvd_ctx_idx_lock; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_CTX_DATA ; 
 int /*<<< orphan*/  mmUVD_CTX_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC4(struct amdgpu_device *adev, u32 reg)
{
	unsigned long flags;
	u32 r;

	FUNC2(&adev->uvd_ctx_idx_lock, flags);
	FUNC1(mmUVD_CTX_INDEX, ((reg) & 0x1ff));
	r = FUNC0(mmUVD_CTX_DATA);
	FUNC3(&adev->uvd_ctx_idx_lock, flags);
	return r;
}