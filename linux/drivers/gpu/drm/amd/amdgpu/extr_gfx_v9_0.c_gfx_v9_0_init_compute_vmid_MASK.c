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
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; } ;

/* Variables and functions */
 int DEFAULT_SH_MEM_BASES ; 
 int FIRST_COMPUTE_VMID ; 
 int /*<<< orphan*/  GC ; 
 int LAST_COMPUTE_VMID ; 
 int SH_MEM_ADDRESS_MODE_64 ; 
 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ; 
 int SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGDS_GWS_VMID0 ; 
 int /*<<< orphan*/  mmGDS_OA_VMID0 ; 
 int /*<<< orphan*/  mmGDS_VMID0_BASE ; 
 int /*<<< orphan*/  mmGDS_VMID0_SIZE ; 
 int /*<<< orphan*/  mmSH_MEM_BASES ; 
 int /*<<< orphan*/  mmSH_MEM_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev)
{
	int i;
	uint32_t sh_mem_config;
	uint32_t sh_mem_bases;

	/*
	 * Configure apertures:
	 * LDS:         0x60000000'00000000 - 0x60000001'00000000 (4GB)
	 * Scratch:     0x60000001'00000000 - 0x60000002'00000000 (4GB)
	 * GPUVM:       0x60010000'00000000 - 0x60020000'00000000 (1TB)
	 */
	sh_mem_bases = DEFAULT_SH_MEM_BASES | (DEFAULT_SH_MEM_BASES << 16);

	sh_mem_config = SH_MEM_ADDRESS_MODE_64 |
			SH_MEM_ALIGNMENT_MODE_UNALIGNED <<
			SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT;

	FUNC2(&adev->srbm_mutex);
	for (i = FIRST_COMPUTE_VMID; i < LAST_COMPUTE_VMID; i++) {
		FUNC4(adev, 0, 0, 0, i);
		/* CP and shaders */
		FUNC1(GC, 0, mmSH_MEM_CONFIG, sh_mem_config);
		FUNC1(GC, 0, mmSH_MEM_BASES, sh_mem_bases);
	}
	FUNC4(adev, 0, 0, 0, 0);
	FUNC3(&adev->srbm_mutex);

	/* Initialize all compute VMIDs to have no GDS, GWS, or OA
	   acccess. These should be enabled by FW for target VMIDs. */
	for (i = FIRST_COMPUTE_VMID; i < LAST_COMPUTE_VMID; i++) {
		FUNC0(GC, 0, mmGDS_VMID0_BASE, 2 * i, 0);
		FUNC0(GC, 0, mmGDS_VMID0_SIZE, 2 * i, 0);
		FUNC0(GC, 0, mmGDS_GWS_VMID0, i, 0);
		FUNC0(GC, 0, mmGDS_OA_VMID0, i, 0);
	}
}