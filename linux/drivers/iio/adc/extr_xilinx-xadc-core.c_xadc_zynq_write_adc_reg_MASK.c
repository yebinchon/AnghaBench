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
typedef  int /*<<< orphan*/  uint16_t ;
struct xadc {int /*<<< orphan*/  completion; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int EIO ; 
 int /*<<< orphan*/  HZ ; 
 int XADC_ZYNQ_CFG_DFIFOTH_MASK ; 
 int XADC_ZYNQ_CFG_DFIFOTH_OFFSET ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XADC_ZYNQ_CMD_WRITE ; 
 int /*<<< orphan*/  XADC_ZYNQ_INT_DFIFO_GTH ; 
 int /*<<< orphan*/  XADC_ZYNQ_REG_CFG ; 
 int /*<<< orphan*/  XADC_ZYNQ_REG_DFIFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xadc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xadc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xadc*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct xadc *xadc, unsigned int reg,
	uint16_t val)
{
	uint32_t cmd[1];
	uint32_t tmp;
	int ret;

	FUNC3(&xadc->lock);
	FUNC8(xadc, XADC_ZYNQ_INT_DFIFO_GTH,
			XADC_ZYNQ_INT_DFIFO_GTH);

	FUNC2(&xadc->completion);

	cmd[0] = FUNC1(XADC_ZYNQ_CMD_WRITE, reg, val);
	FUNC9(xadc, cmd, FUNC0(cmd));
	FUNC6(xadc, XADC_ZYNQ_REG_CFG, &tmp);
	tmp &= ~XADC_ZYNQ_CFG_DFIFOTH_MASK;
	tmp |= 0 << XADC_ZYNQ_CFG_DFIFOTH_OFFSET;
	FUNC7(xadc, XADC_ZYNQ_REG_CFG, tmp);

	FUNC8(xadc, XADC_ZYNQ_INT_DFIFO_GTH, 0);
	FUNC4(&xadc->lock);

	ret = FUNC5(&xadc->completion, HZ);
	if (ret == 0)
		ret = -EIO;
	else
		ret = 0;

	FUNC6(xadc, XADC_ZYNQ_REG_DFIFO, &tmp);

	return ret;
}