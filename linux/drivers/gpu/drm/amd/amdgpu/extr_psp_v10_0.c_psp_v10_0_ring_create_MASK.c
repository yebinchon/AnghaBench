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
 int /*<<< orphan*/  MP0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_64 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_69 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_70 ; 
 int /*<<< orphan*/  mmMP0_SMN_C2PMSG_71 ; 
 int FUNC4 (struct psp_context*,int /*<<< orphan*/ ,int,int,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct psp_context *psp,
				 enum psp_ring_type ring_type)
{
	int ret = 0;
	unsigned int psp_ring_reg = 0;
	struct psp_ring *ring = &psp->km_ring;
	struct amdgpu_device *adev = psp->adev;

	/* Write low address of the ring to C2PMSG_69 */
	psp_ring_reg = FUNC2(ring->ring_mem_mc_addr);
	FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_69, psp_ring_reg);
	/* Write high address of the ring to C2PMSG_70 */
	psp_ring_reg = FUNC5(ring->ring_mem_mc_addr);
	FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_70, psp_ring_reg);
	/* Write size of ring to C2PMSG_71 */
	psp_ring_reg = ring->ring_size;
	FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_71, psp_ring_reg);
	/* Write the ring initialization command to C2PMSG_64 */
	psp_ring_reg = ring_type;
	psp_ring_reg = psp_ring_reg << 16;
	FUNC1(MP0, 0, mmMP0_SMN_C2PMSG_64, psp_ring_reg);

	/* There might be handshake issue with hardware which needs delay */
	FUNC3(20);

	/* Wait for response flag (bit 31) in C2PMSG_64 */
	ret = FUNC4(psp, FUNC0(MP0, 0, mmMP0_SMN_C2PMSG_64),
			   0x80000000, 0x8000FFFF, false);

	return ret;
}