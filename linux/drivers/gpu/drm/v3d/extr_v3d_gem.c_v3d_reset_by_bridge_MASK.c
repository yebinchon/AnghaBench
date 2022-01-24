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
struct v3d_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_HUB_AXICFG ; 
 int /*<<< orphan*/  V3D_HUB_AXICFG_MAX_LEN_MASK ; 
 int /*<<< orphan*/  V3D_TOP_GR_BRIDGE_MAJOR ; 
 int /*<<< orphan*/  V3D_TOP_GR_BRIDGE_REVISION ; 
 int /*<<< orphan*/  V3D_TOP_GR_BRIDGE_SW_INIT_0 ; 
 int /*<<< orphan*/  V3D_TOP_GR_BRIDGE_SW_INIT_0_V3D_CLK_108_SW_INIT ; 
 int /*<<< orphan*/  V3D_TOP_GR_BRIDGE_SW_INIT_1 ; 
 int /*<<< orphan*/  V3D_TOP_GR_BRIDGE_SW_INIT_1_V3D_CLK_108_SW_INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct v3d_dev *v3d)
{
	int version = FUNC0(V3D_TOP_GR_BRIDGE_REVISION);

	if (FUNC2(version, V3D_TOP_GR_BRIDGE_MAJOR) == 2) {
		FUNC1(V3D_TOP_GR_BRIDGE_SW_INIT_0,
				 V3D_TOP_GR_BRIDGE_SW_INIT_0_V3D_CLK_108_SW_INIT);
		FUNC1(V3D_TOP_GR_BRIDGE_SW_INIT_0, 0);

		/* GFXH-1383: The SW_INIT may cause a stray write to address 0
		 * of the unit, so reset it to its power-on value here.
		 */
		FUNC3(V3D_HUB_AXICFG, V3D_HUB_AXICFG_MAX_LEN_MASK);
	} else {
		FUNC4(FUNC2(version,
					   V3D_TOP_GR_BRIDGE_MAJOR) != 7);
		FUNC1(V3D_TOP_GR_BRIDGE_SW_INIT_1,
				 V3D_TOP_GR_BRIDGE_SW_INIT_1_V3D_CLK_108_SW_INIT);
		FUNC1(V3D_TOP_GR_BRIDGE_SW_INIT_1, 0);
	}
}