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
struct dce110_link_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_PRBS_EN ; 
 int /*<<< orphan*/  DPHY_PRBS_SEL ; 
 int /*<<< orphan*/  DP_DPHY_PRBS_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dce110_link_encoder*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dce110_link_encoder*,int) ; 

__attribute__((used)) static void FUNC3(
	struct dce110_link_encoder *enc110)
{
	/* Disable PHY Bypass mode to setup the test pattern */
	FUNC2(enc110, false);

	/* A PRBS7 pattern is used for most DP electrical measurements. */

	/* Enable PRBS symbols on the lanes */
	FUNC1(enc110, false);

	/* For PRBS7 Set bit DPHY_PRBS_SEL=0 and Set bit DPHY_PRBS_EN=1 */
	FUNC0(DP_DPHY_PRBS_CNTL,
			DPHY_PRBS_SEL, 0,
			DPHY_PRBS_EN, 1);

	/* Enable phy bypass mode to enable the test pattern */
	FUNC2(enc110, true);
}