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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 unsigned int AMDGPU_FENCE_FLAG_64BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_CONTEXT_ID ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA1 ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring, u64 addr, u64 seq,
				     unsigned flags)
{
	FUNC1(flags & AMDGPU_FENCE_FLAG_64BIT);

	FUNC2(ring, FUNC0(mmUVD_CONTEXT_ID, 0));
	FUNC2(ring, seq);
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA0, 0));
	FUNC2(ring, addr & 0xffffffff);
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA1, 0));
	FUNC2(ring, FUNC3(addr) & 0xff);
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_CMD, 0));
	FUNC2(ring, 0);

	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA0, 0));
	FUNC2(ring, 0);
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA1, 0));
	FUNC2(ring, 0);
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_CMD, 0));
	FUNC2(ring, 2);
}