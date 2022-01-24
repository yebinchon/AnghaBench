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
typedef  unsigned int uint32_t ;
struct xadc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int XADC_ZYNQ_INT_ALARM_MASK ; 
 int /*<<< orphan*/  XADC_ZYNQ_REG_INTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xadc*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct xadc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xadc*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct xadc *xadc, unsigned int alarm)
{
	unsigned long flags;
	uint32_t status;

	/* Move OT to bit 7 */
	alarm = ((alarm & 0x08) << 4) | ((alarm & 0xf0) >> 1) | (alarm & 0x07);

	FUNC0(&xadc->lock, flags);

	/* Clear previous interrupts if any. */
	FUNC2(xadc, XADC_ZYNQ_REG_INTSTS, &status);
	FUNC3(xadc, XADC_ZYNQ_REG_INTSTS, status & alarm);

	FUNC4(xadc, XADC_ZYNQ_INT_ALARM_MASK,
		~alarm & XADC_ZYNQ_INT_ALARM_MASK);

	FUNC1(&xadc->lock, flags);
}