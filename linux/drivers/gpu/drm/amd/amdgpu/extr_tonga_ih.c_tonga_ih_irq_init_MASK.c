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
typedef  int u32 ;
struct amdgpu_ih_ring {int gpu_addr; int ring_size; int doorbell_index; scalar_t__ use_doorbell; int /*<<< orphan*/  wptr_addr; } ;
struct TYPE_2__ {struct amdgpu_ih_ring ih; scalar_t__ msi_enabled; } ;
struct amdgpu_device {int dummy_page_addr; int /*<<< orphan*/  pdev; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  IH_DOORBELL_RPTR ; 
 int /*<<< orphan*/  IH_DUMMY_RD_OVERRIDE ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_REQ_NONSNOOP_EN ; 
 int /*<<< orphan*/  INTERRUPT_CNTL ; 
 int /*<<< orphan*/  MC_VMID ; 
 int /*<<< orphan*/  OFFSET ; 
 int /*<<< orphan*/  RB_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPTR_REARM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPTR_OVERFLOW_CLEAR ; 
 int /*<<< orphan*/  WPTR_WRITEBACK_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_DOORBELL_RPTR ; 
 int /*<<< orphan*/  mmIH_RB_BASE ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_RPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_LO ; 
 int /*<<< orphan*/  mmINTERRUPT_CNTL ; 
 int /*<<< orphan*/  mmINTERRUPT_CNTL2 ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	u32 interrupt_cntl, ih_rb_cntl, ih_doorbell_rtpr;
	struct amdgpu_ih_ring *ih = &adev->irq.ih;
	int rb_bufsz;

	/* disable irqs */
	FUNC6(adev);

	/* setup interrupt control */
	FUNC2(mmINTERRUPT_CNTL2, adev->dummy_page_addr >> 8);
	interrupt_cntl = FUNC1(mmINTERRUPT_CNTL);
	/* INTERRUPT_CNTL__IH_DUMMY_RD_OVERRIDE_MASK=0 - dummy read disabled with msi, enabled without msi
	 * INTERRUPT_CNTL__IH_DUMMY_RD_OVERRIDE_MASK=1 - dummy read controlled by IH_DUMMY_RD_EN
	 */
	interrupt_cntl = FUNC0(interrupt_cntl, INTERRUPT_CNTL, IH_DUMMY_RD_OVERRIDE, 0);
	/* INTERRUPT_CNTL__IH_REQ_NONSNOOP_EN_MASK=1 if ring is in non-cacheable memory, e.g., vram */
	interrupt_cntl = FUNC0(interrupt_cntl, INTERRUPT_CNTL, IH_REQ_NONSNOOP_EN, 0);
	FUNC2(mmINTERRUPT_CNTL, interrupt_cntl);

	/* Ring Buffer base. [39:8] of 40-bit address of the beginning of the ring buffer*/
	FUNC2(mmIH_RB_BASE, ih->gpu_addr >> 8);

	rb_bufsz = FUNC4(adev->irq.ih.ring_size / 4);
	ih_rb_cntl = FUNC0(0, IH_RB_CNTL, WPTR_OVERFLOW_CLEAR, 1);
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, RB_SIZE, rb_bufsz);
	/* Ring Buffer write pointer writeback. If enabled, IH_RB_WPTR register value is written to memory */
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, WPTR_WRITEBACK_ENABLE, 1);
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, MC_VMID, 0);

	if (adev->irq.msi_enabled)
		ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, RPTR_REARM, 1);

	FUNC2(mmIH_RB_CNTL, ih_rb_cntl);

	/* set the writeback address whether it's enabled or not */
	FUNC2(mmIH_RB_WPTR_ADDR_LO, FUNC3(ih->wptr_addr));
	FUNC2(mmIH_RB_WPTR_ADDR_HI, FUNC8(ih->wptr_addr) & 0xFF);

	/* set rptr, wptr to 0 */
	FUNC2(mmIH_RB_RPTR, 0);
	FUNC2(mmIH_RB_WPTR, 0);

	ih_doorbell_rtpr = FUNC1(mmIH_DOORBELL_RPTR);
	if (adev->irq.ih.use_doorbell) {
		ih_doorbell_rtpr = FUNC0(ih_doorbell_rtpr, IH_DOORBELL_RPTR,
						 OFFSET, adev->irq.ih.doorbell_index);
		ih_doorbell_rtpr = FUNC0(ih_doorbell_rtpr, IH_DOORBELL_RPTR,
						 ENABLE, 1);
	} else {
		ih_doorbell_rtpr = FUNC0(ih_doorbell_rtpr, IH_DOORBELL_RPTR,
						 ENABLE, 0);
	}
	FUNC2(mmIH_DOORBELL_RPTR, ih_doorbell_rtpr);

	FUNC5(adev->pdev);

	/* enable interrupts */
	FUNC7(adev);

	return 0;
}