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
typedef  int uint32_t ;
struct amdgpu_ring {int me; int pipe; int queue; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmRLC_CP_SCHEDULERS ; 

__attribute__((used)) static void FUNC2(struct amdgpu_ring *ring)
{
	uint32_t tmp;
	struct amdgpu_device *adev = ring->adev;

	/* tell RLC which is KIQ queue */
	tmp = FUNC0(mmRLC_CP_SCHEDULERS);
	tmp &= 0xffffff00;
	tmp |= (ring->me << 5) | (ring->pipe << 3) | (ring->queue);
	FUNC1(mmRLC_CP_SCHEDULERS, tmp);
	tmp |= 0x80;
	FUNC1(mmRLC_CP_SCHEDULERS, tmp);
}