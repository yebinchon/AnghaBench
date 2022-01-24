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
 int DISP_DITHERING ; 
 scalar_t__ DISP_DITHER_15 ; 
 scalar_t__ DISP_DITHER_16 ; 
 scalar_t__ DISP_DITHER_5 ; 
 scalar_t__ DISP_DITHER_7 ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int DITHER_NEW_BIT_MODE ; 
 scalar_t__ MTK_MAX_BPC ; 
 unsigned int MTK_MIN_BPC ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

void FUNC7(struct mtk_ddp_comp *comp, unsigned int bpc,
		    unsigned int CFG)
{
	/* If bpc equal to 0, the dithering function didn't be enabled */
	if (bpc == 0)
		return;

	if (bpc >= MTK_MIN_BPC) {
		FUNC6(0, comp->regs + DISP_DITHER_5);
		FUNC6(0, comp->regs + DISP_DITHER_7);
		FUNC6(FUNC5(MTK_MAX_BPC - bpc) |
		       FUNC2(MTK_MAX_BPC - bpc) |
		       DITHER_NEW_BIT_MODE,
		       comp->regs + DISP_DITHER_15);
		FUNC6(FUNC3(MTK_MAX_BPC - bpc) |
		       FUNC0(MTK_MAX_BPC - bpc) |
		       FUNC4(MTK_MAX_BPC - bpc) |
		       FUNC1(MTK_MAX_BPC - bpc),
		       comp->regs + DISP_DITHER_16);
		FUNC6(DISP_DITHERING, comp->regs + CFG);
	}
}