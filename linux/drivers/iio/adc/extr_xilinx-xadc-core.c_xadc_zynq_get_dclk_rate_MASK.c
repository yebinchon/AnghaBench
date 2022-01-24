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
typedef  int uint32_t ;
struct xadc {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
#define  XADC_ZYNQ_CFG_TCKRATE_DIV16 130 
#define  XADC_ZYNQ_CFG_TCKRATE_DIV4 129 
#define  XADC_ZYNQ_CFG_TCKRATE_DIV8 128 
 int XADC_ZYNQ_CFG_TCKRATE_MASK ; 
 int /*<<< orphan*/  XADC_ZYNQ_REG_CFG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xadc*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static unsigned long FUNC2(struct xadc *xadc)
{
	unsigned int div;
	uint32_t val;

	FUNC1(xadc, XADC_ZYNQ_REG_CFG, &val);

	switch (val & XADC_ZYNQ_CFG_TCKRATE_MASK) {
	case XADC_ZYNQ_CFG_TCKRATE_DIV4:
		div = 4;
		break;
	case XADC_ZYNQ_CFG_TCKRATE_DIV8:
		div = 8;
		break;
	case XADC_ZYNQ_CFG_TCKRATE_DIV16:
		div = 16;
		break;
	default:
		div = 2;
		break;
	}

	return FUNC0(xadc->clk) / div;
}