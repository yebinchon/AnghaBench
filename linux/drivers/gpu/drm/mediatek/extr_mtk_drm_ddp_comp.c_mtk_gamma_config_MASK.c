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
struct mtk_ddp_comp {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_GAMMA_CFG ; 
 scalar_t__ DISP_GAMMA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_ddp_comp*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mtk_ddp_comp *comp, unsigned int w,
			     unsigned int h, unsigned int vrefresh,
			     unsigned int bpc)
{
	FUNC1(h << 16 | w, comp->regs + DISP_GAMMA_SIZE);
	FUNC0(comp, bpc, DISP_GAMMA_CFG);
}