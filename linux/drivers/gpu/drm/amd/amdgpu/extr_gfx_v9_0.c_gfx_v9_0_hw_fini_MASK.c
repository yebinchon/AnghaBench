#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_10__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct TYPE_6__ {TYPE_5__ ring; } ;
struct TYPE_9__ {TYPE_3__ rlc; TYPE_1__ kiq; int /*<<< orphan*/  priv_inst_irq; int /*<<< orphan*/  priv_reg_irq; int /*<<< orphan*/  cp_ecc_error_irq; } ;
struct amdgpu_device {TYPE_4__ gfx; int /*<<< orphan*/  srbm_mutex; int /*<<< orphan*/  in_suspend; int /*<<< orphan*/  in_gpu_reset; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* stop ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CP_PQ_WPTR_POLL_CNTL ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC12(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC1(adev, &adev->gfx.cp_ecc_error_irq, 0);
	FUNC1(adev, &adev->gfx.priv_reg_irq, 0);
	FUNC1(adev, &adev->gfx.priv_inst_irq, 0);

	/* disable KCQ to avoid CPC touch memory not valid anymore */
	FUNC6(adev);

	if (FUNC2(adev)) {
		FUNC4(adev, false);
		/* must disable polling for SRIOV when hw finished, otherwise
		 * CPC engine may still keep fetching WB address which is already
		 * invalid after sw finished and trigger DMAR reading error in
		 * hypervisor side.
		 */
		FUNC0(GC, 0, CP_PQ_WPTR_POLL_CNTL, EN, 0);
		return 0;
	}

	/* Use deinitialize sequence from CAIL when unbinding device from driver,
	 * otherwise KIQ is hanging when binding back
	 */
	if (!adev->in_gpu_reset && !adev->in_suspend) {
		FUNC8(&adev->srbm_mutex);
		FUNC10(adev, adev->gfx.kiq.ring.me,
				adev->gfx.kiq.ring.pipe,
				adev->gfx.kiq.ring.queue, 0);
		FUNC7(&adev->gfx.kiq.ring);
		FUNC10(adev, 0, 0, 0, 0);
		FUNC9(&adev->srbm_mutex);
	}

	FUNC3(adev, false);
	adev->gfx.rlc.funcs->stop(adev);

	FUNC5(adev);

	return 0;
}