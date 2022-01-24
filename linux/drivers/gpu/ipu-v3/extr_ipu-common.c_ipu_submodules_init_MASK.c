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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ipu_soc {struct ipu_devtype* devtype; } ;
struct ipu_devtype {scalar_t__ cm_ofs; scalar_t__ srm_ofs; scalar_t__ dc_tmpl_ofs; scalar_t__ disp1_ofs; scalar_t__ disp0_ofs; scalar_t__ vdi_ofs; scalar_t__ tpm_ofs; scalar_t__ ic_ofs; scalar_t__ csi1_ofs; scalar_t__ csi0_ofs; scalar_t__ cpmem_ofs; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ IPU_CM_DC_REG_OFS ; 
 scalar_t__ IPU_CM_DMFC_REG_OFS ; 
 scalar_t__ IPU_CM_SMFC_REG_OFS ; 
 int /*<<< orphan*/  IPU_CONF_CSI0_EN ; 
 int /*<<< orphan*/  IPU_CONF_CSI1_EN ; 
 int /*<<< orphan*/  IPU_CONF_DI0_EN ; 
 int /*<<< orphan*/  IPU_CONF_DI1_EN ; 
 int IPU_CONF_IC_INPUT ; 
 int IPU_CONF_ISP_EN ; 
 int IPU_CONF_VDI_EN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_soc*) ; 
 int FUNC2 (struct ipu_soc*,struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu_soc*,int) ; 
 int FUNC4 (struct ipu_soc*,struct device*,int,scalar_t__,int /*<<< orphan*/ ,struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu_soc*) ; 
 int FUNC6 (struct ipu_soc*,struct device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ipu_soc*,int) ; 
 int FUNC8 (struct ipu_soc*,struct device*,int,scalar_t__,int /*<<< orphan*/ ,struct clk*) ; 
 int /*<<< orphan*/  FUNC9 (struct ipu_soc*) ; 
 int FUNC10 (struct ipu_soc*,struct device*,scalar_t__,struct clk*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipu_soc*) ; 
 int FUNC12 (struct ipu_soc*,struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ipu_soc*) ; 
 int FUNC14 (struct ipu_soc*,struct device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct ipu_soc*) ; 
 int FUNC16 (struct ipu_soc*,struct device*) ; 
 int FUNC17 (struct ipu_soc*,struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct ipu_soc*) ; 
 int FUNC19 (struct ipu_soc*,struct device*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC20(struct ipu_soc *ipu,
		struct platform_device *pdev, unsigned long ipu_base,
		struct clk *ipu_clk)
{
	char *unit;
	int ret;
	struct device *dev = &pdev->dev;
	const struct ipu_devtype *devtype = ipu->devtype;

	ret = FUNC2(ipu, dev, ipu_base + devtype->cpmem_ofs);
	if (ret) {
		unit = "cpmem";
		goto err_cpmem;
	}

	ret = FUNC4(ipu, dev, 0, ipu_base + devtype->csi0_ofs,
			   IPU_CONF_CSI0_EN, ipu_clk);
	if (ret) {
		unit = "csi0";
		goto err_csi_0;
	}

	ret = FUNC4(ipu, dev, 1, ipu_base + devtype->csi1_ofs,
			   IPU_CONF_CSI1_EN, ipu_clk);
	if (ret) {
		unit = "csi1";
		goto err_csi_1;
	}

	ret = FUNC14(ipu, dev,
			  ipu_base + devtype->ic_ofs,
			  ipu_base + devtype->tpm_ofs);
	if (ret) {
		unit = "ic";
		goto err_ic;
	}

	ret = FUNC19(ipu, dev, ipu_base + devtype->vdi_ofs,
			   IPU_CONF_VDI_EN | IPU_CONF_ISP_EN |
			   IPU_CONF_IC_INPUT);
	if (ret) {
		unit = "vdi";
		goto err_vdi;
	}

	ret = FUNC16(ipu, dev);
	if (ret) {
		unit = "image_convert";
		goto err_image_convert;
	}

	ret = FUNC8(ipu, dev, 0, ipu_base + devtype->disp0_ofs,
			  IPU_CONF_DI0_EN, ipu_clk);
	if (ret) {
		unit = "di0";
		goto err_di_0;
	}

	ret = FUNC8(ipu, dev, 1, ipu_base + devtype->disp1_ofs,
			IPU_CONF_DI1_EN, ipu_clk);
	if (ret) {
		unit = "di1";
		goto err_di_1;
	}

	ret = FUNC6(ipu, dev, ipu_base + devtype->cm_ofs +
			IPU_CM_DC_REG_OFS, ipu_base + devtype->dc_tmpl_ofs);
	if (ret) {
		unit = "dc_template";
		goto err_dc;
	}

	ret = FUNC10(ipu, dev, ipu_base +
			devtype->cm_ofs + IPU_CM_DMFC_REG_OFS, ipu_clk);
	if (ret) {
		unit = "dmfc";
		goto err_dmfc;
	}

	ret = FUNC12(ipu, dev, ipu_base + devtype->srm_ofs);
	if (ret) {
		unit = "dp";
		goto err_dp;
	}

	ret = FUNC17(ipu, dev, ipu_base +
			devtype->cm_ofs + IPU_CM_SMFC_REG_OFS);
	if (ret) {
		unit = "smfc";
		goto err_smfc;
	}

	return 0;

err_smfc:
	FUNC11(ipu);
err_dp:
	FUNC9(ipu);
err_dmfc:
	FUNC5(ipu);
err_dc:
	FUNC7(ipu, 1);
err_di_1:
	FUNC7(ipu, 0);
err_di_0:
	FUNC15(ipu);
err_image_convert:
	FUNC18(ipu);
err_vdi:
	FUNC13(ipu);
err_ic:
	FUNC3(ipu, 1);
err_csi_1:
	FUNC3(ipu, 0);
err_csi_0:
	FUNC1(ipu);
err_cpmem:
	FUNC0(&pdev->dev, "init %s failed with %d\n", unit, ret);
	return ret;
}