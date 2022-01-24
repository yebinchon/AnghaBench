#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {TYPE_2__* funcs; } ;
struct amdgpu_kiq {int /*<<< orphan*/  ring_lock; struct amdgpu_ring ring; } ;
struct TYPE_8__ {size_t reg_val_offs; } ;
struct TYPE_7__ {int /*<<< orphan*/ * wb; } ;
struct TYPE_5__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_4__ virt; TYPE_3__ wb; scalar_t__ in_gpu_reset; TYPE_1__ gfx; } ;
struct TYPE_6__ {int /*<<< orphan*/  emit_rreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAX_KIQ_REG_BAILOUT_INTERVAL ; 
 long MAX_KIQ_REG_TRY ; 
 int /*<<< orphan*/  MAX_KIQ_REG_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int /*<<< orphan*/ *) ; 
 long FUNC2 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

uint32_t FUNC12(struct amdgpu_device *adev, uint32_t reg)
{
	signed long r, cnt = 0;
	unsigned long flags;
	uint32_t seq;
	struct amdgpu_kiq *kiq = &adev->gfx.kiq;
	struct amdgpu_ring *ring = &kiq->ring;

	FUNC0(!ring->funcs->emit_rreg);

	FUNC10(&kiq->ring_lock, flags);
	FUNC3(ring, 32);
	FUNC5(ring, reg);
	FUNC1(ring, &seq);
	FUNC4(ring);
	FUNC11(&kiq->ring_lock, flags);

	r = FUNC2(ring, seq, MAX_KIQ_REG_WAIT);

	/* don't wait anymore for gpu reset case because this way may
	 * block gpu_recover() routine forever, e.g. this virt_kiq_rreg
	 * is triggered in TTM and ttm_bo_lock_delayed_workqueue() will
	 * never return if we keep waiting in virt_kiq_rreg, which cause
	 * gpu_recover() hang there.
	 *
	 * also don't wait anymore for IRQ context
	 * */
	if (r < 1 && (adev->in_gpu_reset || FUNC6()))
		goto failed_kiq_read;

	FUNC7();
	while (r < 1 && cnt++ < MAX_KIQ_REG_TRY) {
		FUNC8(MAX_KIQ_REG_BAILOUT_INTERVAL);
		r = FUNC2(ring, seq, MAX_KIQ_REG_WAIT);
	}

	if (cnt > MAX_KIQ_REG_TRY)
		goto failed_kiq_read;

	return adev->wb.wb[adev->virt.reg_val_offs];

failed_kiq_read:
	FUNC9("failed to read reg:%x\n", reg);
	return ~0;
}