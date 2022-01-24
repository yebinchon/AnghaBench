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
struct ipu_soc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IDMAC_CONF ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  IPU_CONF ; 
 int /*<<< orphan*/  IPU_FS_DISP_FLOW1 ; 
 int /*<<< orphan*/  IPU_FS_PROC_FLOW1 ; 
 int /*<<< orphan*/  IPU_FS_PROC_FLOW2 ; 
 int /*<<< orphan*/  IPU_FS_PROC_FLOW3 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipu_soc*,int /*<<< orphan*/ ) ; 

void FUNC8(struct ipu_soc *ipu)
{
	int i;

	FUNC5(ipu->dev, "IPU_CONF = \t0x%08X\n",
		FUNC6(ipu, IPU_CONF));
	FUNC5(ipu->dev, "IDMAC_CONF = \t0x%08X\n",
		FUNC7(ipu, IDMAC_CONF));
	FUNC5(ipu->dev, "IDMAC_CHA_EN1 = \t0x%08X\n",
		FUNC7(ipu, FUNC1(0)));
	FUNC5(ipu->dev, "IDMAC_CHA_EN2 = \t0x%08X\n",
		FUNC7(ipu, FUNC1(32)));
	FUNC5(ipu->dev, "IDMAC_CHA_PRI1 = \t0x%08X\n",
		FUNC7(ipu, FUNC2(0)));
	FUNC5(ipu->dev, "IDMAC_CHA_PRI2 = \t0x%08X\n",
		FUNC7(ipu, FUNC2(32)));
	FUNC5(ipu->dev, "IDMAC_BAND_EN1 = \t0x%08X\n",
		FUNC7(ipu, FUNC0(0)));
	FUNC5(ipu->dev, "IDMAC_BAND_EN2 = \t0x%08X\n",
		FUNC7(ipu, FUNC0(32)));
	FUNC5(ipu->dev, "IPU_CHA_DB_MODE_SEL0 = \t0x%08X\n",
		FUNC6(ipu, FUNC3(0)));
	FUNC5(ipu->dev, "IPU_CHA_DB_MODE_SEL1 = \t0x%08X\n",
		FUNC6(ipu, FUNC3(32)));
	FUNC5(ipu->dev, "IPU_FS_PROC_FLOW1 = \t0x%08X\n",
		FUNC6(ipu, IPU_FS_PROC_FLOW1));
	FUNC5(ipu->dev, "IPU_FS_PROC_FLOW2 = \t0x%08X\n",
		FUNC6(ipu, IPU_FS_PROC_FLOW2));
	FUNC5(ipu->dev, "IPU_FS_PROC_FLOW3 = \t0x%08X\n",
		FUNC6(ipu, IPU_FS_PROC_FLOW3));
	FUNC5(ipu->dev, "IPU_FS_DISP_FLOW1 = \t0x%08X\n",
		FUNC6(ipu, IPU_FS_DISP_FLOW1));
	for (i = 0; i < 15; i++)
		FUNC5(ipu->dev, "IPU_INT_CTRL(%d) = \t%08X\n", i,
			FUNC6(ipu, FUNC4(i)));
}