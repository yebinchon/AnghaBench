#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct bcm_iproc_i2c_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFG_EN_SHIFT ; 
 int /*<<< orphan*/  CFG_OFFSET ; 
 int /*<<< orphan*/  CFG_RESET_SHIFT ; 
 int IE_M_ALL_INTERRUPT_MASK ; 
 int IE_M_ALL_INTERRUPT_SHIFT ; 
 int /*<<< orphan*/  IE_OFFSET ; 
 int /*<<< orphan*/  IS_OFFSET ; 
 int /*<<< orphan*/  M_FIFO_CTRL_OFFSET ; 
 int /*<<< orphan*/  M_FIFO_RX_FLUSH_SHIFT ; 
 int /*<<< orphan*/  M_FIFO_TX_FLUSH_SHIFT ; 
 int FUNC1 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct bcm_iproc_i2c_dev *iproc_i2c)
{
	u32 val;

	/* put controller in reset */
	val = FUNC1(iproc_i2c, CFG_OFFSET);
	val |= FUNC0(CFG_RESET_SHIFT);
	val &= ~(FUNC0(CFG_EN_SHIFT));
	FUNC2(iproc_i2c, CFG_OFFSET, val);

	/* wait 100 usec per spec */
	FUNC3(100);

	/* bring controller out of reset */
	val &= ~(FUNC0(CFG_RESET_SHIFT));
	FUNC2(iproc_i2c, CFG_OFFSET, val);

	/* flush TX/RX FIFOs and set RX FIFO threshold to zero */
	val = (FUNC0(M_FIFO_RX_FLUSH_SHIFT) | FUNC0(M_FIFO_TX_FLUSH_SHIFT));
	FUNC2(iproc_i2c, M_FIFO_CTRL_OFFSET, val);
	/* disable all interrupts */
	val = FUNC1(iproc_i2c, IE_OFFSET);
	val &= ~(IE_M_ALL_INTERRUPT_MASK <<
			IE_M_ALL_INTERRUPT_SHIFT);
	FUNC2(iproc_i2c, IE_OFFSET, val);

	/* clear all pending interrupts */
	FUNC2(iproc_i2c, IS_OFFSET, 0xffffffff);

	return 0;
}