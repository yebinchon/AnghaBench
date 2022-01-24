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
struct ti_sn_bridge {int /*<<< orphan*/  panel; int /*<<< orphan*/  regmap; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SN_ENH_FRAME_REG ; 
 int /*<<< orphan*/  SN_ML_TX_MODE_REG ; 
 int /*<<< orphan*/  SN_PLL_ENABLE_REG ; 
 int /*<<< orphan*/  VSTREAM_ENABLE ; 
 struct ti_sn_bridge* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge)
{
	struct ti_sn_bridge *pdata = FUNC0(bridge);

	FUNC1(pdata->panel);

	/* disable video stream */
	FUNC3(pdata->regmap, SN_ENH_FRAME_REG, VSTREAM_ENABLE, 0);
	/* semi auto link training mode OFF */
	FUNC4(pdata->regmap, SN_ML_TX_MODE_REG, 0);
	/* disable DP PLL */
	FUNC4(pdata->regmap, SN_PLL_ENABLE_REG, 0);

	FUNC2(pdata->panel);
}