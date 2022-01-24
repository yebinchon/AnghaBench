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
typedef  int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD ; 
 int VCN_DEC_CMD_FENCE ; 
 int VCN_DEC_CMD_TRAP ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_CONTEXT_ID ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA1 ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring, u64 addr, u64 seq,
				     unsigned flags)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC2(flags & AMDGPU_FENCE_FLAG_64BIT);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_CONTEXT_ID), 0));
	FUNC3(ring, seq);
	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_GPCOM_VCPU_DATA0), 0));
	FUNC3(ring, addr & 0xffffffff);
	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_GPCOM_VCPU_DATA1), 0));
	FUNC3(ring, FUNC4(addr) & 0xff);
	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_GPCOM_VCPU_CMD), 0));
	FUNC3(ring, VCN_DEC_CMD_FENCE << 1);

	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_GPCOM_VCPU_DATA0), 0));
	FUNC3(ring, 0);
	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_GPCOM_VCPU_DATA1), 0));
	FUNC3(ring, 0);
	FUNC3(ring,
		FUNC0(FUNC1(UVD, 0, mmUVD_GPCOM_VCPU_CMD), 0));
	FUNC3(ring, VCN_DEC_CMD_TRAP << 1);
}