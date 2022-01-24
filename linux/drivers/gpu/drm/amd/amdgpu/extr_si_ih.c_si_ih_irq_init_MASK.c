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
struct amdgpu_device {int /*<<< orphan*/  pdev; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IH_CNTL ; 
 int IH_DUMMY_RD_OVERRIDE ; 
 int /*<<< orphan*/  IH_RB_BASE ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_RB_RPTR ; 
 int /*<<< orphan*/  IH_RB_WPTR ; 
 int /*<<< orphan*/  IH_RB_WPTR_ADDR_HI ; 
 int /*<<< orphan*/  IH_RB_WPTR_ADDR_LO ; 
 int IH_REQ_NONSNOOP_EN ; 
 int IH_WPTR_OVERFLOW_CLEAR ; 
 int IH_WPTR_OVERFLOW_ENABLE ; 
 int IH_WPTR_WRITEBACK_ENABLE ; 
 int /*<<< orphan*/  INTERRUPT_CNTL ; 
 int /*<<< orphan*/  INTERRUPT_CNTL2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int RPTR_REARM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	struct amdgpu_ih_ring *ih = &adev->irq.ih;
	int rb_bufsz;
	u32 interrupt_cntl, ih_cntl, ih_rb_cntl;

	FUNC8(adev);
	FUNC4(INTERRUPT_CNTL2, adev->irq.ih.gpu_addr >> 8);
	interrupt_cntl = FUNC3(INTERRUPT_CNTL);
	interrupt_cntl &= ~IH_DUMMY_RD_OVERRIDE;
	interrupt_cntl &= ~IH_REQ_NONSNOOP_EN;
	FUNC4(INTERRUPT_CNTL, interrupt_cntl);

	FUNC4(IH_RB_BASE, adev->irq.ih.gpu_addr >> 8);
	rb_bufsz = FUNC6(adev->irq.ih.ring_size / 4);

	ih_rb_cntl = IH_WPTR_OVERFLOW_ENABLE |
		     IH_WPTR_OVERFLOW_CLEAR |
		     (rb_bufsz << 1) |
		     IH_WPTR_WRITEBACK_ENABLE;

	FUNC4(IH_RB_WPTR_ADDR_LO, FUNC5(ih->wptr_addr));
	FUNC4(IH_RB_WPTR_ADDR_HI, FUNC10(ih->wptr_addr) & 0xFF);
	FUNC4(IH_RB_CNTL, ih_rb_cntl);
	FUNC4(IH_RB_RPTR, 0);
	FUNC4(IH_RB_WPTR, 0);

	ih_cntl = FUNC1(0x10) | FUNC2(0x10) | FUNC0(0);
	if (adev->irq.msi_enabled)
		ih_cntl |= RPTR_REARM;
	FUNC4(IH_CNTL, ih_cntl);

	FUNC7(adev->pdev);
	FUNC9(adev);

	return 0;
}