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
struct amdgpu_ih_ring {int gpu_addr; int ring_size; int /*<<< orphan*/  wptr_addr; } ;
struct TYPE_2__ {scalar_t__ msi_enabled; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {int dummy_page_addr; int /*<<< orphan*/  pdev; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IH_CNTL ; 
 int /*<<< orphan*/  IH_DUMMY_RD_OVERRIDE ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_REQ_NONSNOOP_EN ; 
 int /*<<< orphan*/  INTERRUPT_CNTL ; 
 int /*<<< orphan*/  MC_VMID ; 
 int /*<<< orphan*/  RB_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPTR_REARM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPTR_OVERFLOW_CLEAR ; 
 int /*<<< orphan*/  WPTR_OVERFLOW_ENABLE ; 
 int /*<<< orphan*/  WPTR_WRITEBACK_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_BASE ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_RPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_ADDR_LO ; 
 int /*<<< orphan*/  mmINTERRUPT_CNTL ; 
 int /*<<< orphan*/  mmINTERRUPT_CNTL2 ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	struct amdgpu_ih_ring *ih = &adev->irq.ih;
	int rb_bufsz;
	u32 interrupt_cntl, ih_cntl, ih_rb_cntl;

	/* disable irqs */
	FUNC3(adev);

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
	FUNC2(mmIH_RB_BASE, adev->irq.ih.gpu_addr >> 8);

	rb_bufsz = FUNC6(adev->irq.ih.ring_size / 4);
	ih_rb_cntl = FUNC0(0, IH_RB_CNTL, WPTR_OVERFLOW_ENABLE, 1);
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, WPTR_OVERFLOW_CLEAR, 1);
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, RB_SIZE, rb_bufsz);

	/* Ring Buffer write pointer writeback. If enabled, IH_RB_WPTR register value is written to memory */
	ih_rb_cntl = FUNC0(ih_rb_cntl, IH_RB_CNTL, WPTR_WRITEBACK_ENABLE, 1);

	/* set the writeback address whether it's enabled or not */
	FUNC2(mmIH_RB_WPTR_ADDR_LO, FUNC5(ih->wptr_addr));
	FUNC2(mmIH_RB_WPTR_ADDR_HI, FUNC8(ih->wptr_addr) & 0xFF);

	FUNC2(mmIH_RB_CNTL, ih_rb_cntl);

	/* set rptr, wptr to 0 */
	FUNC2(mmIH_RB_RPTR, 0);
	FUNC2(mmIH_RB_WPTR, 0);

	/* Default settings for IH_CNTL (disabled at first) */
	ih_cntl = FUNC1(mmIH_CNTL);
	ih_cntl = FUNC0(ih_cntl, IH_CNTL, MC_VMID, 0);

	if (adev->irq.msi_enabled)
		ih_cntl = FUNC0(ih_cntl, IH_CNTL, RPTR_REARM, 1);
	FUNC2(mmIH_CNTL, ih_cntl);

	FUNC7(adev->pdev);

	/* enable interrupts */
	FUNC4(adev);

	return 0;
}