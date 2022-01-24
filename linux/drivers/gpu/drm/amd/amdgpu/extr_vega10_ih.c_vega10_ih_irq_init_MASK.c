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
typedef  int u32 ;
struct amdgpu_ih_ring {int gpu_addr; scalar_t__ ring_size; int /*<<< orphan*/  wptr_addr; scalar_t__ use_bus_addr; } ;
struct TYPE_6__ {struct amdgpu_ih_ring ih2; struct amdgpu_ih_ring ih1; int /*<<< orphan*/  msi_enabled; struct amdgpu_ih_ring ih; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {scalar_t__ asic_type; int /*<<< orphan*/  pdev; int /*<<< orphan*/  psp; TYPE_3__ irq; TYPE_2__ firmware; TYPE_1__* nbio_funcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ih_control ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_DIRECT ; 
 scalar_t__ CHIP_ARCTURUS ; 
 scalar_t__ CHIP_RENOIR ; 
 int /*<<< orphan*/  CLIENT18_IS_STORM_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FLOOD_CNTL_ENABLE ; 
 int /*<<< orphan*/  IH_CHICKEN ; 
 int /*<<< orphan*/  IH_INT_FLOOD_CNTL ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_STORM_CLIENT_LIST_CNTL ; 
 int /*<<< orphan*/  MC_SPACE_FBPA_ENABLE ; 
 int /*<<< orphan*/  MC_SPACE_GPA_ENABLE ; 
 int /*<<< orphan*/  OSSSYS ; 
 int /*<<< orphan*/  PSP_REG_IH_RB_CNTL ; 
 int /*<<< orphan*/  PSP_REG_IH_RB_CNTL_RING1 ; 
 int /*<<< orphan*/  PSP_REG_IH_RB_CNTL_RING2 ; 
 int /*<<< orphan*/  RB_FULL_DRAIN_ENABLE ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPTR_REARM ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPTR_OVERFLOW_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_CHICKEN ; 
 int /*<<< orphan*/  mmIH_DOORBELL_RPTR ; 
 int /*<<< orphan*/  mmIH_DOORBELL_RPTR_RING1 ; 
 int /*<<< orphan*/  mmIH_DOORBELL_RPTR_RING2 ; 
 int /*<<< orphan*/  mmIH_INT_FLOOD_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_BASE ; 
 int /*<<< orphan*/  mmIH_RB_BASE_HI ; 
 int /*<<< orphan*/  mmIH_RB_BASE_HI_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_BASE_HI_RING2 ; 
 int /*<<< orphan*/  mmIH_RB_BASE_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_BASE_RING2 ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_CNTL_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_CNTL_RING2 ; 
 int /*<<< orphan*/  mmIH_RB_RPTR ; 
 int /*<<< orphan*/  mmIH_RB_RPTR_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_RPTR_RING2 ; 
 int /*<<< orphan*/  mmIH_RB_WPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_LO ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_RING2 ; 
 int /*<<< orphan*/  mmIH_STORM_CLIENT_LIST_CNTL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 
 int FUNC11 (struct amdgpu_ih_ring*) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*) ; 
 int FUNC13 (struct amdgpu_ih_ring*,int) ; 

__attribute__((used)) static int FUNC14(struct amdgpu_device *adev)
{
	struct amdgpu_ih_ring *ih;
	u32 ih_rb_cntl, ih_chicken;
	int ret = 0;
	u32 tmp;

	/* disable irqs */
	FUNC10(adev);

	adev->nbio_funcs->ih_control(adev);

	ih = &adev->irq.ih;
	/* Ring Buffer base. [39:8] of 40-bit address of the beginning of the ring buffer*/
	FUNC3(OSSSYS, 0, mmIH_RB_BASE, ih->gpu_addr >> 8);
	FUNC3(OSSSYS, 0, mmIH_RB_BASE_HI, (ih->gpu_addr >> 40) & 0xff);

	ih_rb_cntl = FUNC2(OSSSYS, 0, mmIH_RB_CNTL);
	ih_chicken = FUNC2(OSSSYS, 0, mmIH_CHICKEN);
	ih_rb_cntl = FUNC13(ih, ih_rb_cntl);
	if (adev->irq.ih.use_bus_addr) {
		ih_chicken = FUNC1(ih_chicken, IH_CHICKEN, MC_SPACE_GPA_ENABLE, 1);
	} else {
		ih_chicken = FUNC1(ih_chicken, IH_CHICKEN, MC_SPACE_FBPA_ENABLE, 1);
	}
	ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL, RPTR_REARM,
				   !!adev->irq.msi_enabled);

	if (FUNC4(adev)) {
		if (FUNC7(&adev->psp, PSP_REG_IH_RB_CNTL, ih_rb_cntl)) {
			FUNC0("PSP program IH_RB_CNTL failed!\n");
			return -ETIMEDOUT;
		}
	} else {
		FUNC3(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);
	}

	if ((adev->asic_type == CHIP_ARCTURUS
		&& adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT)
		|| adev->asic_type == CHIP_RENOIR)
		FUNC3(OSSSYS, 0, mmIH_CHICKEN, ih_chicken);

	/* set the writeback address whether it's enabled or not */
	FUNC3(OSSSYS, 0, mmIH_RB_WPTR_ADDR_LO,
		     FUNC5(ih->wptr_addr));
	FUNC3(OSSSYS, 0, mmIH_RB_WPTR_ADDR_HI,
		     FUNC9(ih->wptr_addr) & 0xFFFF);

	/* set rptr, wptr to 0 */
	FUNC3(OSSSYS, 0, mmIH_RB_WPTR, 0);
	FUNC3(OSSSYS, 0, mmIH_RB_RPTR, 0);

	FUNC3(OSSSYS, 0, mmIH_DOORBELL_RPTR,
		     FUNC11(ih));

	ih = &adev->irq.ih1;
	if (ih->ring_size) {
		FUNC3(OSSSYS, 0, mmIH_RB_BASE_RING1, ih->gpu_addr >> 8);
		FUNC3(OSSSYS, 0, mmIH_RB_BASE_HI_RING1,
			     (ih->gpu_addr >> 40) & 0xff);

		ih_rb_cntl = FUNC2(OSSSYS, 0, mmIH_RB_CNTL_RING1);
		ih_rb_cntl = FUNC13(ih, ih_rb_cntl);
		ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL,
					   WPTR_OVERFLOW_ENABLE, 0);
		ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL,
					   RB_FULL_DRAIN_ENABLE, 1);
		if (FUNC4(adev)) {
			if (FUNC7(&adev->psp, PSP_REG_IH_RB_CNTL_RING1,
						ih_rb_cntl)) {
				FUNC0("program IH_RB_CNTL_RING1 failed!\n");
				return -ETIMEDOUT;
			}
		} else {
			FUNC3(OSSSYS, 0, mmIH_RB_CNTL_RING1, ih_rb_cntl);
		}

		/* set rptr, wptr to 0 */
		FUNC3(OSSSYS, 0, mmIH_RB_WPTR_RING1, 0);
		FUNC3(OSSSYS, 0, mmIH_RB_RPTR_RING1, 0);

		FUNC3(OSSSYS, 0, mmIH_DOORBELL_RPTR_RING1,
			     FUNC11(ih));
	}

	ih = &adev->irq.ih2;
	if (ih->ring_size) {
		FUNC3(OSSSYS, 0, mmIH_RB_BASE_RING2, ih->gpu_addr >> 8);
		FUNC3(OSSSYS, 0, mmIH_RB_BASE_HI_RING2,
			     (ih->gpu_addr >> 40) & 0xff);

		ih_rb_cntl = FUNC2(OSSSYS, 0, mmIH_RB_CNTL_RING2);
		ih_rb_cntl = FUNC13(ih, ih_rb_cntl);

		if (FUNC4(adev)) {
			if (FUNC7(&adev->psp, PSP_REG_IH_RB_CNTL_RING2,
						ih_rb_cntl)) {
				FUNC0("program IH_RB_CNTL_RING2 failed!\n");
				return -ETIMEDOUT;
			}
		} else {
			FUNC3(OSSSYS, 0, mmIH_RB_CNTL_RING2, ih_rb_cntl);
		}

		/* set rptr, wptr to 0 */
		FUNC3(OSSSYS, 0, mmIH_RB_WPTR_RING2, 0);
		FUNC3(OSSSYS, 0, mmIH_RB_RPTR_RING2, 0);

		FUNC3(OSSSYS, 0, mmIH_DOORBELL_RPTR_RING2,
			     FUNC11(ih));
	}

	tmp = FUNC2(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL);
	tmp = FUNC1(tmp, IH_STORM_CLIENT_LIST_CNTL,
			    CLIENT18_IS_STORM_CLIENT, 1);
	FUNC3(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL, tmp);

	tmp = FUNC2(OSSSYS, 0, mmIH_INT_FLOOD_CNTL);
	tmp = FUNC1(tmp, IH_INT_FLOOD_CNTL, FLOOD_CNTL_ENABLE, 1);
	FUNC3(OSSSYS, 0, mmIH_INT_FLOOD_CNTL, tmp);

	FUNC6(adev->pdev);

	/* enable interrupts */
	FUNC12(adev);

	return ret;
}