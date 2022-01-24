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
struct mtk_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_PHY_LCCON ; 
 int /*<<< orphan*/  LC_ULPM_EN ; 
 int /*<<< orphan*/  LC_WAKEUP_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mtk_dsi *dsi)
{
	FUNC0(dsi, DSI_PHY_LCCON, LC_ULPM_EN, 0);
	FUNC0(dsi, DSI_PHY_LCCON, LC_WAKEUP_EN, LC_WAKEUP_EN);
	FUNC0(dsi, DSI_PHY_LCCON, LC_WAKEUP_EN, 0);
}