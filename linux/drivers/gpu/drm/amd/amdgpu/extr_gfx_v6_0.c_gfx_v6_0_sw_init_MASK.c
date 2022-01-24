#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_ring {int use_doorbell; int me; int pipe; int queue; int /*<<< orphan*/  name; scalar_t__ doorbell_index; int /*<<< orphan*/ * ring_obj; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int num_gfx_rings; int num_compute_rings; int /*<<< orphan*/  eop_irq; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; TYPE_2__ rlc; int /*<<< orphan*/  priv_inst_irq; int /*<<< orphan*/  priv_reg_irq; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_4__ {int (* init ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 unsigned int AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP ; 
 unsigned int AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP ; 
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
 int AMDGPU_MAX_COMPUTE_RINGS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_ring*,int,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC7(void *handle)
{
	struct amdgpu_ring *ring;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int i, r;

	r = FUNC1(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 181, &adev->gfx.eop_irq);
	if (r)
		return r;

	r = FUNC1(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 184, &adev->gfx.priv_reg_irq);
	if (r)
		return r;

	r = FUNC1(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 185, &adev->gfx.priv_inst_irq);
	if (r)
		return r;

	FUNC4(adev);

	r = FUNC3(adev);
	if (r) {
		FUNC0("Failed to load gfx firmware!\n");
		return r;
	}

	r = adev->gfx.rlc.funcs->init(adev);
	if (r) {
		FUNC0("Failed to init rlc BOs!\n");
		return r;
	}

	for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
		ring = &adev->gfx.gfx_ring[i];
		ring->ring_obj = NULL;
		FUNC5(ring->name, "gfx");
		r = FUNC2(adev, ring, 1024,
				     &adev->gfx.eop_irq, AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP);
		if (r)
			return r;
	}

	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		unsigned irq_type;

		if ((i >= 32) || (i >= AMDGPU_MAX_COMPUTE_RINGS)) {
			FUNC0("Too many (%d) compute rings!\n", i);
			break;
		}
		ring = &adev->gfx.compute_ring[i];
		ring->ring_obj = NULL;
		ring->use_doorbell = false;
		ring->doorbell_index = 0;
		ring->me = 1;
		ring->pipe = i;
		ring->queue = i;
		FUNC5(ring->name, "comp_%d.%d.%d", ring->me, ring->pipe, ring->queue);
		irq_type = AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP + ring->pipe;
		r = FUNC2(adev, ring, 1024,
				     &adev->gfx.eop_irq, irq_type);
		if (r)
			return r;
	}

	return r;
}