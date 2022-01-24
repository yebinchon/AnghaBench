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
struct amdgpu_ring {int /*<<< orphan*/  wptr; struct amdgpu_device* adev; } ;
struct amdgpu_device {int pg_flags; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_VCN_DPG ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_SCRATCH2 ; 

__attribute__((used)) static void FUNC2(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)
		FUNC0(UVD, 0, mmUVD_SCRATCH2,
			FUNC1(ring->wptr) | 0x80000000);

	FUNC0(UVD, 0, mmUVD_RBC_RB_WPTR, FUNC1(ring->wptr));
}