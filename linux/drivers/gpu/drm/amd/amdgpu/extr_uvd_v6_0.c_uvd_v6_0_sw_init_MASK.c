#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_ring {int /*<<< orphan*/  name; int /*<<< orphan*/ * funcs; } ;
struct TYPE_6__ {int num_enc_rings; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_7__ {int num_types; } ;
struct TYPE_5__ {TYPE_3__ irq; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_IRQ_CLIENTID_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ VISLANDS30_IV_SRCID_UVD_ENC_GEN_PURP ; 
 scalar_t__ VISLANDS30_IV_SRCID_UVD_SYSTEM_MESSAGE ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_ring*,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC8(void *handle)
{
	struct amdgpu_ring *ring;
	int i, r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	/* UVD TRAP */
	r = FUNC1(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_UVD_SYSTEM_MESSAGE, &adev->uvd.inst->irq);
	if (r)
		return r;

	/* UVD ENC TRAP */
	if (FUNC7(adev)) {
		for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
			r = FUNC1(adev, AMDGPU_IRQ_CLIENTID_LEGACY, i + VISLANDS30_IV_SRCID_UVD_ENC_GEN_PURP, &adev->uvd.inst->irq);
			if (r)
				return r;
		}
	}

	r = FUNC5(adev);
	if (r)
		return r;

	if (!FUNC7(adev)) {
		for (i = 0; i < adev->uvd.num_enc_rings; ++i)
			adev->uvd.inst->ring_enc[i].funcs = NULL;

		adev->uvd.inst->irq.num_types = 1;
		adev->uvd.num_enc_rings = 0;

		FUNC0("UVD ENC is disabled\n");
	}

	ring = &adev->uvd.inst->ring;
	FUNC6(ring->name, "uvd");
	r = FUNC2(adev, ring, 512, &adev->uvd.inst->irq, 0);
	if (r)
		return r;

	r = FUNC4(adev);
	if (r)
		return r;

	if (FUNC7(adev)) {
		for (i = 0; i < adev->uvd.num_enc_rings; ++i) {
			ring = &adev->uvd.inst->ring_enc[i];
			FUNC6(ring->name, "uvd_enc%d", i);
			r = FUNC2(adev, ring, 512, &adev->uvd.inst->irq, 0);
			if (r)
				return r;
		}
	}

	r = FUNC3(adev);

	return r;
}