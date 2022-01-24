#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct amdgpu_ring {size_t me; struct amdgpu_device* adev; } ;
struct TYPE_5__ {int /*<<< orphan*/  scratch9; int /*<<< orphan*/  cmd; } ;
struct TYPE_8__ {TYPE_3__* inst; TYPE_1__ internal; } ;
struct amdgpu_device {unsigned int usec_timeout; TYPE_4__ vcn; } ;
struct TYPE_6__ {int /*<<< orphan*/  scratch9; } ;
struct TYPE_7__ {TYPE_2__ external; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VCN_DEC_CMD_PACKET_START ; 
 int VCN_DEC_KMD_CMD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	FUNC2(adev->vcn.inst[ring->me].external.scratch9, 0xCAFEDEAD);
	r = FUNC3(ring, 4);
	if (r)
		return r;
	FUNC5(ring, FUNC0(adev->vcn.internal.cmd, 0));
	FUNC5(ring, VCN_DEC_KMD_CMD | (VCN_DEC_CMD_PACKET_START << 1));
	FUNC5(ring, FUNC0(adev->vcn.internal.scratch9, 0));
	FUNC5(ring, 0xDEADBEEF);
	FUNC4(ring);
	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC1(adev->vcn.inst[ring->me].external.scratch9);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC6(1);
	}

	if (i >= adev->usec_timeout)
		r = -ETIMEDOUT;

	return r;
}