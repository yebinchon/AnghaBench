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
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_CMD ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA0 ; 
 int /*<<< orphan*/  mmUVD_GPCOM_VCPU_DATA1 ; 
 int /*<<< orphan*/  mmUVD_GP_SCRATCH8 ; 
 int mmVM_INVALIDATE_REQUEST ; 

__attribute__((used)) static void FUNC3(struct amdgpu_ring *ring,
					unsigned vmid, uint64_t pd_addr)
{
	FUNC1(ring, vmid, pd_addr);

	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA0, 0));
	FUNC2(ring, mmVM_INVALIDATE_REQUEST << 2);
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_DATA1, 0));
	FUNC2(ring, 0);
	FUNC2(ring, FUNC0(mmUVD_GP_SCRATCH8, 0));
	FUNC2(ring, 1 << vmid); /* mask */
	FUNC2(ring, FUNC0(mmUVD_GPCOM_VCPU_CMD, 0));
	FUNC2(ring, 0xC);
}