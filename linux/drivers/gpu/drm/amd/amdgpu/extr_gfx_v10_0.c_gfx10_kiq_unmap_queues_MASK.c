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
typedef  int u64 ;
struct amdgpu_ring {int /*<<< orphan*/  doorbell_index; TYPE_1__* funcs; } ;
typedef  enum amdgpu_unmap_queues_action { ____Placeholder_amdgpu_unmap_queues_action } amdgpu_unmap_queues_action ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_GFX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_UNMAP_QUEUES ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int PREEMPT_QUEUES_NO_UNMAP ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct amdgpu_ring *kiq_ring,
				   struct amdgpu_ring *ring,
				   enum amdgpu_unmap_queues_action action,
				   u64 gpu_addr, u64 seq)
{
	uint32_t eng_sel = ring->funcs->type == AMDGPU_RING_TYPE_GFX ? 4 : 0;

	FUNC6(kiq_ring, FUNC0(PACKET3_UNMAP_QUEUES, 4));
	FUNC6(kiq_ring, /* Q_sel: 0, vmid: 0, engine: 0, num_Q: 1 */
			  FUNC1(action) |
			  FUNC5(0) |
			  FUNC3(eng_sel) |
			  FUNC4(1));
	FUNC6(kiq_ring,
		  FUNC2(ring->doorbell_index));

	if (action == PREEMPT_QUEUES_NO_UNMAP) {
		FUNC6(kiq_ring, FUNC7(gpu_addr));
		FUNC6(kiq_ring, FUNC8(gpu_addr));
		FUNC6(kiq_ring, seq);
	} else {
		FUNC6(kiq_ring, 0);
		FUNC6(kiq_ring, 0);
		FUNC6(kiq_ring, 0);
	}
}