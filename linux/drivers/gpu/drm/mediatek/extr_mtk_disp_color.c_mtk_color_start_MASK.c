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
struct mtk_disp_color {int dummy; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;

/* Variables and functions */
 int COLOR_BYPASS_ALL ; 
 int COLOR_SEQ_SEL ; 
 scalar_t__ DISP_COLOR_CFG_MAIN ; 
 scalar_t__ FUNC0 (struct mtk_disp_color*) ; 
 struct mtk_disp_color* FUNC1 (struct mtk_ddp_comp*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtk_ddp_comp *comp)
{
	struct mtk_disp_color *color = FUNC1(comp);

	FUNC2(COLOR_BYPASS_ALL | COLOR_SEQ_SEL,
	       comp->regs + DISP_COLOR_CFG_MAIN);
	FUNC2(0x1, comp->regs + FUNC0(color));
}