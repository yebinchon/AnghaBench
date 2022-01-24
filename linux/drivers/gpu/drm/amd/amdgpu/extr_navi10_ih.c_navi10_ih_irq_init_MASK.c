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
struct amdgpu_ih_ring {int gpu_addr; int doorbell_index; scalar_t__ use_doorbell; int /*<<< orphan*/  wptr_addr; scalar_t__ use_bus_addr; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  msi_enabled; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {int /*<<< orphan*/  pdev; TYPE_3__* nbio_funcs; TYPE_2__ firmware; TYPE_1__ irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ih_doorbell_range ) (struct amdgpu_device*,scalar_t__,int) ;int /*<<< orphan*/  (* ih_control ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_DIRECT ; 
 int /*<<< orphan*/  CLIENT18_IS_STORM_CLIENT ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FLOOD_CNTL_ENABLE ; 
 int /*<<< orphan*/  IH_CHICKEN ; 
 int /*<<< orphan*/  IH_DOORBELL_RPTR ; 
 int /*<<< orphan*/  IH_INT_FLOOD_CNTL ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_STORM_CLIENT_LIST_CNTL ; 
 int /*<<< orphan*/  MC_SPACE_GPA_ENABLE ; 
 int /*<<< orphan*/  OFFSET ; 
 int /*<<< orphan*/  OSSSYS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPTR_REARM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_CHICKEN ; 
 int /*<<< orphan*/  mmIH_DOORBELL_RPTR ; 
 int /*<<< orphan*/  mmIH_INT_FLOOD_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_BASE ; 
 int /*<<< orphan*/  mmIH_RB_BASE_HI ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_RPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_LO ; 
 int /*<<< orphan*/  mmIH_STORM_CLIENT_LIST_CNTL ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_ih_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	struct amdgpu_ih_ring *ih = &adev->irq.ih;
	int ret = 0;
	u32 ih_rb_cntl, ih_doorbell_rtpr, ih_chicken;
	u32 tmp;

	/* disable irqs */
	FUNC4(adev);

	adev->nbio_funcs->ih_control(adev);

	/* Ring Buffer base. [39:8] of 40-bit address of the beginning of the ring buffer*/
	FUNC2(OSSSYS, 0, mmIH_RB_BASE, ih->gpu_addr >> 8);
	FUNC2(OSSSYS, 0, mmIH_RB_BASE_HI, (ih->gpu_addr >> 40) & 0xff);

	ih_rb_cntl = FUNC1(OSSSYS, 0, mmIH_RB_CNTL);
	ih_rb_cntl = FUNC6(ih, ih_rb_cntl);
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, RPTR_REARM,
				   !!adev->irq.msi_enabled);

	if (FUNC10(adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT)) {
		if (ih->use_bus_addr) {
			ih_chicken = FUNC1(OSSSYS, 0, mmIH_CHICKEN);
			ih_chicken = FUNC0(ih_chicken,
					IH_CHICKEN, MC_SPACE_GPA_ENABLE, 1);
			FUNC2(OSSSYS, 0, mmIH_CHICKEN, ih_chicken);
		}
	}

	FUNC2(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);

	/* set the writeback address whether it's enabled or not */
	FUNC2(OSSSYS, 0, mmIH_RB_WPTR_ADDR_LO,
		     FUNC3(ih->wptr_addr));
	FUNC2(OSSSYS, 0, mmIH_RB_WPTR_ADDR_HI,
		     FUNC11(ih->wptr_addr) & 0xFFFF);

	/* set rptr, wptr to 0 */
	FUNC2(OSSSYS, 0, mmIH_RB_RPTR, 0);
	FUNC2(OSSSYS, 0, mmIH_RB_WPTR, 0);

	ih_doorbell_rtpr = FUNC1(OSSSYS, 0, mmIH_DOORBELL_RPTR);
	if (ih->use_doorbell) {
		ih_doorbell_rtpr = FUNC0(ih_doorbell_rtpr,
						 IH_DOORBELL_RPTR, OFFSET,
						 ih->doorbell_index);
		ih_doorbell_rtpr = FUNC0(ih_doorbell_rtpr,
						 IH_DOORBELL_RPTR, ENABLE, 1);
	} else {
		ih_doorbell_rtpr = FUNC0(ih_doorbell_rtpr,
						 IH_DOORBELL_RPTR, ENABLE, 0);
	}
	FUNC2(OSSSYS, 0, mmIH_DOORBELL_RPTR, ih_doorbell_rtpr);

	adev->nbio_funcs->ih_doorbell_range(adev, ih->use_doorbell,
					    ih->doorbell_index);

	tmp = FUNC1(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL);
	tmp = FUNC0(tmp, IH_STORM_CLIENT_LIST_CNTL,
			    CLIENT18_IS_STORM_CLIENT, 1);
	FUNC2(OSSSYS, 0, mmIH_STORM_CLIENT_LIST_CNTL, tmp);

	tmp = FUNC1(OSSSYS, 0, mmIH_INT_FLOOD_CNTL);
	tmp = FUNC0(tmp, IH_INT_FLOOD_CNTL, FLOOD_CNTL_ENABLE, 1);
	FUNC2(OSSSYS, 0, mmIH_INT_FLOOD_CNTL, tmp);

	FUNC7(adev->pdev);

	/* enable interrupts */
	FUNC5(adev);

	return ret;
}