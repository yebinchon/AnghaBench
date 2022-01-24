#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct amdgpu_ring {int /*<<< orphan*/  doorbell_index; TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_GFX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_QUERY_STATUS ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct amdgpu_ring *kiq_ring,
				   struct amdgpu_ring *ring,
				   u64 addr,
				   u64 seq)
{
	uint32_t eng_sel = ring->funcs->type == AMDGPU_RING_TYPE_GFX ? 4 : 0;

	FUNC6(kiq_ring, FUNC0(PACKET3_QUERY_STATUS, 5));
	FUNC6(kiq_ring,
			  FUNC2(0) |
			  FUNC5(0) |
			  FUNC1(2));
	FUNC6(kiq_ring, /* Q_sel: 0, vmid: 0, engine: 0, num_Q: 1 */
			  FUNC3(ring->doorbell_index) |
			  FUNC4(eng_sel));
	FUNC6(kiq_ring, FUNC7(addr));
	FUNC6(kiq_ring, FUNC8(addr));
	FUNC6(kiq_ring, FUNC7(seq));
	FUNC6(kiq_ring, FUNC8(seq));
}