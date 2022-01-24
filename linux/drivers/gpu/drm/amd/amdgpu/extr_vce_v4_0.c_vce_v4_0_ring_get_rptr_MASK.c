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
struct amdgpu_ring {int me; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR2 ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR3 ; 

__attribute__((used)) static uint64_t FUNC2(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (ring->me == 0)
		return FUNC0(FUNC1(VCE, 0, mmVCE_RB_RPTR));
	else if (ring->me == 1)
		return FUNC0(FUNC1(VCE, 0, mmVCE_RB_RPTR2));
	else
		return FUNC0(FUNC1(VCE, 0, mmVCE_RB_RPTR3));
}