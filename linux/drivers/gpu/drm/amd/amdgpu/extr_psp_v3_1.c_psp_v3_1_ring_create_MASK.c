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
struct psp_ring {unsigned int ring_size; int /*<<< orphan*/  ring_mem_mc_addr; } ;
struct psp_context {struct amdgpu_device* adev; struct psp_ring km_ring; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum psp_ring_type { ____Placeholder_psp_ring_type } psp_ring_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MP0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_101 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_102 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_103 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_64 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_69 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_70 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_71 ; 
 int /*<<< orphan*/  FUNC5 (struct psp_context*) ; 
 int FUNC6 (struct psp_context*,int) ; 
 scalar_t__ FUNC7 (struct psp_context*) ; 
 int FUNC8 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct psp_context *psp,
				enum psp_ring_type ring_type)
{
	int ret = 0;
	unsigned int psp_ring_reg = 0;
	struct psp_ring *ring = &psp->km_ring;
	struct amdgpu_device *adev = psp->adev;

	FUNC5(psp);

	if (FUNC7(psp)) {
		ret = FUNC6(psp, ring_type);
		if (ret) {
			FUNC0("psp_v3_1_ring_stop_sriov failed!\n");
			return ret;
		}

		/* Write low address of the ring to C2PMSG_102 */
		psp_ring_reg = FUNC3(ring->ring_mem_mc_addr);
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_102, psp_ring_reg);
		/* Write high address of the ring to C2PMSG_103 */
		psp_ring_reg = FUNC9(ring->ring_mem_mc_addr);
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_103, psp_ring_reg);
		/* No size initialization for sriov  */
		/* Write the ring initialization command to C2PMSG_101 */
		psp_ring_reg = ring_type;
		psp_ring_reg = psp_ring_reg << 16;
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_101, psp_ring_reg);

		/* there might be hardware handshake issue which needs delay */
		FUNC4(20);

		/* Wait for response flag (bit 31) in C2PMSG_101 */
		ret = FUNC8(psp, FUNC1(MP0, 0,
					mmMP0_SMN_C2PMSG_101), 0x80000000,
					0x8000FFFF, false);
	} else {

		/* Write low address of the ring to C2PMSG_69 */
		psp_ring_reg = FUNC3(ring->ring_mem_mc_addr);
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_69, psp_ring_reg);
		/* Write high address of the ring to C2PMSG_70 */
		psp_ring_reg = FUNC9(ring->ring_mem_mc_addr);
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_70, psp_ring_reg);
		/* Write size of ring to C2PMSG_71 */
		psp_ring_reg = ring->ring_size;
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_71, psp_ring_reg);
		/* Write the ring initialization command to C2PMSG_64 */
		psp_ring_reg = ring_type;
		psp_ring_reg = psp_ring_reg << 16;
		FUNC2(MP0, 0, mmMP0_SMN_C2PMSG_64, psp_ring_reg);

		/* there might be hardware handshake issue which needs delay */
		FUNC4(20);

		/* Wait for response flag (bit 31) in C2PMSG_64 */
		ret = FUNC8(psp, FUNC1(MP0, 0,
					mmMP0_SMN_C2PMSG_64), 0x80000000,
					0x8000FFFF, false);

	}
	return ret;
}