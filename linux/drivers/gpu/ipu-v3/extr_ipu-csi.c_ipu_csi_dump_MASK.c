#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipu_csi {TYPE_1__* ipu; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_ACT_FRM_SIZE ; 
 int /*<<< orphan*/  CSI_CCIR_CODE_1 ; 
 int /*<<< orphan*/  CSI_CCIR_CODE_2 ; 
 int /*<<< orphan*/  CSI_CCIR_CODE_3 ; 
 int /*<<< orphan*/  CSI_MIPI_DI ; 
 int /*<<< orphan*/  CSI_OUT_FRM_CTRL ; 
 int /*<<< orphan*/  CSI_SENS_CONF ; 
 int /*<<< orphan*/  CSI_SENS_FRM_SIZE ; 
 int /*<<< orphan*/  CSI_SKIP ; 
 int /*<<< orphan*/  CSI_TST_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_csi*,int /*<<< orphan*/ ) ; 

void FUNC2(struct ipu_csi *csi)
{
	FUNC0(csi->ipu->dev, "CSI_SENS_CONF:     %08x\n",
		FUNC1(csi, CSI_SENS_CONF));
	FUNC0(csi->ipu->dev, "CSI_SENS_FRM_SIZE: %08x\n",
		FUNC1(csi, CSI_SENS_FRM_SIZE));
	FUNC0(csi->ipu->dev, "CSI_ACT_FRM_SIZE:  %08x\n",
		FUNC1(csi, CSI_ACT_FRM_SIZE));
	FUNC0(csi->ipu->dev, "CSI_OUT_FRM_CTRL:  %08x\n",
		FUNC1(csi, CSI_OUT_FRM_CTRL));
	FUNC0(csi->ipu->dev, "CSI_TST_CTRL:      %08x\n",
		FUNC1(csi, CSI_TST_CTRL));
	FUNC0(csi->ipu->dev, "CSI_CCIR_CODE_1:   %08x\n",
		FUNC1(csi, CSI_CCIR_CODE_1));
	FUNC0(csi->ipu->dev, "CSI_CCIR_CODE_2:   %08x\n",
		FUNC1(csi, CSI_CCIR_CODE_2));
	FUNC0(csi->ipu->dev, "CSI_CCIR_CODE_3:   %08x\n",
		FUNC1(csi, CSI_CCIR_CODE_3));
	FUNC0(csi->ipu->dev, "CSI_MIPI_DI:       %08x\n",
		FUNC1(csi, CSI_MIPI_DI));
	FUNC0(csi->ipu->dev, "CSI_SKIP:          %08x\n",
		FUNC1(csi, CSI_SKIP));
}