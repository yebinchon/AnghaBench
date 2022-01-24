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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_kiq {int /*<<< orphan*/  ring_lock; struct amdgpu_ring ring; } ;
struct TYPE_2__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_KIQ_REG_BAILOUT_INTERVAL ; 
 long MAX_KIQ_REG_TRY ; 
 int /*<<< orphan*/  MAX_KIQ_REG_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*,int /*<<< orphan*/ *) ; 
 long FUNC1 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(struct amdgpu_device *adev,
					uint32_t reg0, uint32_t reg1,
					uint32_t ref, uint32_t mask)
{
	struct amdgpu_kiq *kiq = &adev->gfx.kiq;
	struct amdgpu_ring *ring = &kiq->ring;
	signed long r, cnt = 0;
	unsigned long flags;
	uint32_t seq;

	FUNC9(&kiq->ring_lock, flags);
	FUNC2(ring, 32);
	FUNC4(ring, reg0, reg1,
					    ref, mask);
	FUNC0(ring, &seq);
	FUNC3(ring);
	FUNC10(&kiq->ring_lock, flags);

	r = FUNC1(ring, seq, MAX_KIQ_REG_WAIT);

	/* don't wait anymore for IRQ context */
	if (r < 1 && FUNC5())
		goto failed_kiq;

	FUNC6();
	while (r < 1 && cnt++ < MAX_KIQ_REG_TRY) {

		FUNC7(MAX_KIQ_REG_BAILOUT_INTERVAL);
		r = FUNC1(ring, seq, MAX_KIQ_REG_WAIT);
	}

	if (cnt > MAX_KIQ_REG_TRY)
		goto failed_kiq;

	return;

failed_kiq:
	FUNC8("failed to write reg %x wait reg %x\n", reg0, reg1);
}