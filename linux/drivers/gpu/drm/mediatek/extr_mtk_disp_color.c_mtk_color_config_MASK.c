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
 scalar_t__ FUNC0 (struct mtk_disp_color*) ; 
 scalar_t__ FUNC1 (struct mtk_disp_color*) ; 
 struct mtk_disp_color* FUNC2 (struct mtk_ddp_comp*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mtk_ddp_comp *comp, unsigned int w,
			     unsigned int h, unsigned int vrefresh,
			     unsigned int bpc)
{
	struct mtk_disp_color *color = FUNC2(comp);

	FUNC3(w, comp->regs + FUNC1(color));
	FUNC3(h, comp->regs + FUNC0(color));
}