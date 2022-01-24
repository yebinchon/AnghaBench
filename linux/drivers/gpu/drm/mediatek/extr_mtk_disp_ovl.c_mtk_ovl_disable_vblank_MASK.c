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
struct mtk_disp_ovl {int /*<<< orphan*/ * crtc; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DISP_REG_OVL_INTEN ; 
 struct mtk_disp_ovl* FUNC0 (struct mtk_ddp_comp*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mtk_ddp_comp *comp)
{
	struct mtk_disp_ovl *ovl = FUNC0(comp);

	ovl->crtc = NULL;
	FUNC1(0x0, comp->regs + DISP_REG_OVL_INTEN);
}