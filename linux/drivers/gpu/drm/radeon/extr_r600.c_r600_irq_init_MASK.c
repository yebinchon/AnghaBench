#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int gpu_addr; scalar_t__ enabled; } ;
struct TYPE_3__ {int gpu_addr; int ring_size; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  pdev; scalar_t__ msi_enabled; TYPE_2__ wb; TYPE_1__ ih; } ;

/* Variables and functions */
 scalar_t__ CHIP_CEDAR ; 
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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int R600_WB_IH_WPTR_OFFSET ; 
 int RPTR_REARM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (int) ; 

int FUNC15(struct radeon_device *rdev)
{
	int ret = 0;
	int rb_bufsz;
	u32 interrupt_cntl, ih_cntl, ih_rb_cntl;

	/* allocate ring */
	ret = FUNC11(rdev);
	if (ret)
		return ret;

	/* disable irqs */
	FUNC9(rdev);

	/* init rlc */
	if (rdev->family >= CHIP_CEDAR)
		ret = FUNC5(rdev);
	else
		ret = FUNC13(rdev);
	if (ret) {
		FUNC12(rdev);
		return ret;
	}

	/* setup interrupt control */
	/* set dummy read address to ring address */
	FUNC3(INTERRUPT_CNTL2, rdev->ih.gpu_addr >> 8);
	interrupt_cntl = FUNC2(INTERRUPT_CNTL);
	/* IH_DUMMY_RD_OVERRIDE=0 - dummy read disabled with msi, enabled without msi
	 * IH_DUMMY_RD_OVERRIDE=1 - dummy read controlled by IH_DUMMY_RD_EN
	 */
	interrupt_cntl &= ~IH_DUMMY_RD_OVERRIDE;
	/* IH_REQ_NONSNOOP_EN=1 if ring is in non-cacheable memory, e.g., vram */
	interrupt_cntl &= ~IH_REQ_NONSNOOP_EN;
	FUNC3(INTERRUPT_CNTL, interrupt_cntl);

	FUNC3(IH_RB_BASE, rdev->ih.gpu_addr >> 8);
	rb_bufsz = FUNC6(rdev->ih.ring_size / 4);

	ih_rb_cntl = (IH_WPTR_OVERFLOW_ENABLE |
		      IH_WPTR_OVERFLOW_CLEAR |
		      (rb_bufsz << 1));

	if (rdev->wb.enabled)
		ih_rb_cntl |= IH_WPTR_WRITEBACK_ENABLE;

	/* set the writeback address whether it's enabled or not */
	FUNC3(IH_RB_WPTR_ADDR_LO, (rdev->wb.gpu_addr + R600_WB_IH_WPTR_OFFSET) & 0xFFFFFFFC);
	FUNC3(IH_RB_WPTR_ADDR_HI, FUNC14(rdev->wb.gpu_addr + R600_WB_IH_WPTR_OFFSET) & 0xFF);

	FUNC3(IH_RB_CNTL, ih_rb_cntl);

	/* set rptr, wptr to 0 */
	FUNC3(IH_RB_RPTR, 0);
	FUNC3(IH_RB_WPTR, 0);

	/* Default settings for IH_CNTL (disabled at first) */
	ih_cntl = FUNC0(0x10) | FUNC1(0x10);
	/* RPTR_REARM only works if msi's are enabled */
	if (rdev->msi_enabled)
		ih_cntl |= RPTR_REARM;
	FUNC3(IH_CNTL, ih_cntl);

	/* force the active interrupt state to all disabled */
	if (rdev->family >= CHIP_CEDAR)
		FUNC4(rdev);
	else
		FUNC8(rdev);

	/* at this point everything should be setup correctly to enable master */
	FUNC7(rdev->pdev);

	/* enable irqs */
	FUNC10(rdev);

	return ret;
}