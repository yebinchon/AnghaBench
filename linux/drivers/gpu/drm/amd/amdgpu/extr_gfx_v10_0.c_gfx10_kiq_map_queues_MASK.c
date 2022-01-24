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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct amdgpu_ring {int wptr_offs; int me; int /*<<< orphan*/  doorbell_index; int /*<<< orphan*/  pipe; int /*<<< orphan*/  queue; TYPE_2__* funcs; int /*<<< orphan*/  mqd_obj; struct amdgpu_device* adev; } ;
struct TYPE_3__ {scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_GFX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_MAP_QUEUES ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_ring*,int) ; 
 int FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct amdgpu_ring *kiq_ring,
				 struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = kiq_ring->adev;
	uint64_t mqd_addr = FUNC11(ring->mqd_obj);
	uint64_t wptr_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
	uint32_t eng_sel = ring->funcs->type == AMDGPU_RING_TYPE_GFX ? 4 : 0;

	FUNC12(kiq_ring, FUNC0(PACKET3_MAP_QUEUES, 5));
	/* Q_sel:0, vmid:0, vidmem: 1, engine:0, num_Q:1*/
	FUNC12(kiq_ring, /* Q_sel: 0, vmid: 0, engine: 0, num_Q: 1 */
			  FUNC8(0) | /* Queue_Sel */
			  FUNC10(0) | /* VMID */
			  FUNC7(ring->queue) |
			  FUNC6(ring->pipe) |
			  FUNC4((ring->me == 1 ? 0 : 1)) |
			  FUNC9(0) | /*queue_type: normal compute queue */
			  FUNC1(0) | /* alloc format: all_on_one_pipe */
			  FUNC3(eng_sel) |
			  FUNC5(1)); /* num_queues: must be 1 */
	FUNC12(kiq_ring, FUNC2(ring->doorbell_index));
	FUNC12(kiq_ring, FUNC13(mqd_addr));
	FUNC12(kiq_ring, FUNC14(mqd_addr));
	FUNC12(kiq_ring, FUNC13(wptr_addr));
	FUNC12(kiq_ring, FUNC14(wptr_addr));
}