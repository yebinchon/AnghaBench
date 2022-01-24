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
struct phy {int dummy; } ;
struct mtk_mipi_tx {int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct phy*) ; 
 struct mtk_mipi_tx* FUNC2 (struct phy*) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct mtk_mipi_tx *mipi_tx = FUNC2(phy);
	int ret;

	/* Power up core and enable PLL */
	ret = FUNC0(mipi_tx->pll);
	if (ret < 0)
		return ret;

	/* Enable DSI Lane LDO outputs, disable pad tie low */
	FUNC1(phy);

	return 0;
}