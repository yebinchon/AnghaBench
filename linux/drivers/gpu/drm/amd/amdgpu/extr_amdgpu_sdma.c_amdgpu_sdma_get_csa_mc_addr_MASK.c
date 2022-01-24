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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_CSA_SDMA_OFFSET ; 
 int AMDGPU_CSA_SDMA_SIZE ; 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  amdgpu_mcbp ; 
 int FUNC1 (struct amdgpu_ring*,int*) ; 

uint64_t FUNC2(struct amdgpu_ring *ring,
				     unsigned vmid)
{
	struct amdgpu_device *adev = ring->adev;
	uint64_t csa_mc_addr;
	uint32_t index = 0;
	int r;

	if (vmid == 0 || !amdgpu_mcbp)
		return 0;

	r = FUNC1(ring, &index);

	if (r || index > 31)
		csa_mc_addr = 0;
	else
		csa_mc_addr = FUNC0(adev) +
			AMDGPU_CSA_SDMA_OFFSET +
			index * AMDGPU_CSA_SDMA_SIZE;

	return csa_mc_addr;
}