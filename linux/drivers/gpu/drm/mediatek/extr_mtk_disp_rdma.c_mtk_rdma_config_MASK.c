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
struct mtk_disp_rdma {int dummy; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DISP_REG_RDMA_FIFO_CON ; 
 int /*<<< orphan*/  DISP_REG_RDMA_SIZE_CON_0 ; 
 int /*<<< orphan*/  DISP_REG_RDMA_SIZE_CON_1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_disp_rdma*) ; 
 unsigned int RDMA_FIFO_UNDERFLOW_EN ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct mtk_disp_rdma* FUNC3 (struct mtk_ddp_comp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_ddp_comp*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mtk_ddp_comp *comp, unsigned int width,
			    unsigned int height, unsigned int vrefresh,
			    unsigned int bpc)
{
	unsigned int threshold;
	unsigned int reg;
	struct mtk_disp_rdma *rdma = FUNC3(comp);

	FUNC4(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
	FUNC4(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);

	/*
	 * Enable FIFO underflow since DSI and DPI can't be blocked.
	 * Keep the FIFO pseudo size reset default of 8 KiB. Set the
	 * output threshold to 6 microseconds with 7/6 overhead to
	 * account for blanking, and with a pixel depth of 4 bytes:
	 */
	threshold = width * height * vrefresh * 4 * 7 / 1000000;
	reg = RDMA_FIFO_UNDERFLOW_EN |
	      FUNC0(FUNC1(rdma)) |
	      FUNC2(threshold);
	FUNC5(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
}