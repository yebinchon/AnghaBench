#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  data1; int /*<<< orphan*/  data0; } ;
struct TYPE_3__ {TYPE_2__ internal; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VCN_DEC_CMD_WRITE_REG ; 
 int VCN_DEC_KMD_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 

void FUNC2(struct amdgpu_ring *ring,
				uint32_t reg, uint32_t val)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC1(ring, FUNC0(adev->vcn.internal.data0, 0));
	FUNC1(ring, reg << 2);

	FUNC1(ring, FUNC0(adev->vcn.internal.data1, 0));
	FUNC1(ring, val);

	FUNC1(ring, FUNC0(adev->vcn.internal.cmd, 0));

	FUNC1(ring, VCN_DEC_KMD_CMD | (VCN_DEC_CMD_WRITE_REG << 1));
}