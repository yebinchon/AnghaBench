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
struct mtk_mipi_tx {int /*<<< orphan*/  dev; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPITX_DSI_BG_CON ; 
 int /*<<< orphan*/  MIPITX_DSI_CON ; 
 int /*<<< orphan*/  MIPITX_DSI_PLL_CON0 ; 
 int /*<<< orphan*/  MIPITX_DSI_PLL_PWR ; 
 int /*<<< orphan*/  MIPITX_DSI_PLL_TOP ; 
 int /*<<< orphan*/  MIPITX_DSI_TOP_CON ; 
 int RG_DSI_BG_CKEN ; 
 int RG_DSI_BG_CORE_EN ; 
 int RG_DSI_CKG_LDOOUT_EN ; 
 int RG_DSI_LDOCORE_EN ; 
 int RG_DSI_LNT_HS_BIAS_EN ; 
 int RG_DSI_MPPLL_DIV_MSK ; 
 int RG_DSI_MPPLL_PLL_EN ; 
 int RG_DSI_MPPLL_PRESERVE ; 
 int RG_DSI_MPPLL_SDM_ISO_EN ; 
 int RG_DSI_MPPLL_SDM_PWR_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_mipi_tx*,int /*<<< orphan*/ ,int) ; 
 struct mtk_mipi_tx* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_mipi_tx*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct mtk_mipi_tx *mipi_tx = FUNC2(hw);

	FUNC0(mipi_tx->dev, "unprepare\n");

	FUNC1(mipi_tx, MIPITX_DSI_PLL_CON0,
			       RG_DSI_MPPLL_PLL_EN);

	FUNC3(mipi_tx, MIPITX_DSI_PLL_TOP,
				RG_DSI_MPPLL_PRESERVE, 0);

	FUNC3(mipi_tx, MIPITX_DSI_PLL_PWR,
				RG_DSI_MPPLL_SDM_ISO_EN |
				RG_DSI_MPPLL_SDM_PWR_ON,
				RG_DSI_MPPLL_SDM_ISO_EN);

	FUNC1(mipi_tx, MIPITX_DSI_TOP_CON,
			       RG_DSI_LNT_HS_BIAS_EN);

	FUNC1(mipi_tx, MIPITX_DSI_CON,
			       RG_DSI_CKG_LDOOUT_EN | RG_DSI_LDOCORE_EN);

	FUNC1(mipi_tx, MIPITX_DSI_BG_CON,
			       RG_DSI_BG_CKEN | RG_DSI_BG_CORE_EN);

	FUNC1(mipi_tx, MIPITX_DSI_PLL_CON0,
			       RG_DSI_MPPLL_DIV_MSK);
}