#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {unsigned long start; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ipu_soc {scalar_t__ id; int irq_sync; int irq_err; int /*<<< orphan*/  clk; TYPE_1__* dev; void* idmac_reg; void* cm_reg; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  ipu_type; struct ipu_devtype const* devtype; int /*<<< orphan*/  prg_priv; } ;
struct ipu_devtype {unsigned long cm_ofs; unsigned long cpmem_ofs; unsigned long csi0_ofs; unsigned long csi1_ofs; unsigned long ic_ofs; unsigned long disp0_ofs; unsigned long disp1_ofs; unsigned long srm_ofs; unsigned long tpm_ofs; unsigned long vdi_ofs; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 unsigned long IPU_CM_DC_REG_OFS ; 
 unsigned long IPU_CM_DMFC_REG_OFS ; 
 unsigned long IPU_CM_IC_REG_OFS ; 
 unsigned long IPU_CM_IDMAC_REG_OFS ; 
 int /*<<< orphan*/  IPU_DISP_GEN ; 
 int IPU_MCU_T_DEFAULT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 void* FUNC11 (TYPE_1__*,unsigned long,int /*<<< orphan*/ ) ; 
 struct ipu_soc* FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ipu_soc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ipu_soc*) ; 
 int FUNC16 (struct ipu_soc*) ; 
 int FUNC17 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct ipu_soc*) ; 
 int FUNC20 (struct ipu_soc*,struct platform_device*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct device_node*,char*) ; 
 struct ipu_devtype* FUNC23 (TYPE_1__*) ; 
 scalar_t__ FUNC24 (struct device_node*,char*) ; 
 int FUNC25 (struct platform_device*,int) ; 
 struct resource* FUNC26 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct ipu_soc *ipu;
	struct resource *res;
	unsigned long ipu_base;
	int ret, irq_sync, irq_err;
	const struct ipu_devtype *devtype;

	devtype = FUNC23(&pdev->dev);
	if (!devtype)
		return -EINVAL;

	irq_sync = FUNC25(pdev, 0);
	irq_err = FUNC25(pdev, 1);
	res = FUNC26(pdev, IORESOURCE_MEM, 0);

	FUNC6(&pdev->dev, "irq_sync: %d irq_err: %d\n",
			irq_sync, irq_err);

	if (!res || irq_sync < 0 || irq_err < 0)
		return -ENODEV;

	ipu_base = res->start;

	ipu = FUNC12(&pdev->dev, sizeof(*ipu), GFP_KERNEL);
	if (!ipu)
		return -ENODEV;

	ipu->id = FUNC22(np, "ipu");
	if (ipu->id < 0)
		ipu->id = 0;

	if (FUNC24(np, "fsl,imx6qp-ipu") &&
	    FUNC1(CONFIG_DRM)) {
		ipu->prg_priv = FUNC18(&pdev->dev,
							  "fsl,prg", ipu->id);
		if (!ipu->prg_priv)
			return -EPROBE_DEFER;
	}

	ipu->devtype = devtype;
	ipu->ipu_type = devtype->type;

	FUNC28(&ipu->lock);
	FUNC21(&ipu->channel_lock);
	FUNC0(&ipu->channels);

	FUNC6(&pdev->dev, "cm_reg:   0x%08lx\n",
			ipu_base + devtype->cm_ofs);
	FUNC6(&pdev->dev, "idmac:    0x%08lx\n",
			ipu_base + devtype->cm_ofs + IPU_CM_IDMAC_REG_OFS);
	FUNC6(&pdev->dev, "cpmem:    0x%08lx\n",
			ipu_base + devtype->cpmem_ofs);
	FUNC6(&pdev->dev, "csi0:    0x%08lx\n",
			ipu_base + devtype->csi0_ofs);
	FUNC6(&pdev->dev, "csi1:    0x%08lx\n",
			ipu_base + devtype->csi1_ofs);
	FUNC6(&pdev->dev, "ic:      0x%08lx\n",
			ipu_base + devtype->ic_ofs);
	FUNC6(&pdev->dev, "disp0:    0x%08lx\n",
			ipu_base + devtype->disp0_ofs);
	FUNC6(&pdev->dev, "disp1:    0x%08lx\n",
			ipu_base + devtype->disp1_ofs);
	FUNC6(&pdev->dev, "srm:      0x%08lx\n",
			ipu_base + devtype->srm_ofs);
	FUNC6(&pdev->dev, "tpm:      0x%08lx\n",
			ipu_base + devtype->tpm_ofs);
	FUNC6(&pdev->dev, "dc:       0x%08lx\n",
			ipu_base + devtype->cm_ofs + IPU_CM_DC_REG_OFS);
	FUNC6(&pdev->dev, "ic:       0x%08lx\n",
			ipu_base + devtype->cm_ofs + IPU_CM_IC_REG_OFS);
	FUNC6(&pdev->dev, "dmfc:     0x%08lx\n",
			ipu_base + devtype->cm_ofs + IPU_CM_DMFC_REG_OFS);
	FUNC6(&pdev->dev, "vdi:      0x%08lx\n",
			ipu_base + devtype->vdi_ofs);

	ipu->cm_reg = FUNC11(&pdev->dev,
			ipu_base + devtype->cm_ofs, PAGE_SIZE);
	ipu->idmac_reg = FUNC11(&pdev->dev,
			ipu_base + devtype->cm_ofs + IPU_CM_IDMAC_REG_OFS,
			PAGE_SIZE);

	if (!ipu->cm_reg || !ipu->idmac_reg)
		return -ENOMEM;

	ipu->clk = FUNC10(&pdev->dev, "bus");
	if (FUNC2(ipu->clk)) {
		ret = FUNC3(ipu->clk);
		FUNC7(&pdev->dev, "clk_get failed with %d", ret);
		return ret;
	}

	FUNC27(pdev, ipu);

	ret = FUNC5(ipu->clk);
	if (ret) {
		FUNC7(&pdev->dev, "clk_prepare_enable failed: %d\n", ret);
		return ret;
	}

	ipu->dev = &pdev->dev;
	ipu->irq_sync = irq_sync;
	ipu->irq_err = irq_err;

	ret = FUNC9(&pdev->dev);
	if (ret) {
		FUNC7(&pdev->dev, "failed to reset: %d\n", ret);
		goto out_failed_reset;
	}
	ret = FUNC17(ipu);
	if (ret)
		goto out_failed_reset;

	ret = FUNC16(ipu);
	if (ret)
		goto out_failed_irq;

	/* Set MCU_T to divide MCU access window into 2 */
	FUNC14(ipu, 0x00400000L | (IPU_MCU_T_DEFAULT << 18),
			IPU_DISP_GEN);

	ret = FUNC20(ipu, pdev, ipu_base, ipu->clk);
	if (ret)
		goto failed_submodules_init;

	ret = FUNC13(ipu, ipu_base);
	if (ret) {
		FUNC7(&pdev->dev, "adding client devices failed with %d\n",
				ret);
		goto failed_add_clients;
	}

	FUNC8(&pdev->dev, "%s probed\n", devtype->name);

	return 0;

failed_add_clients:
	FUNC19(ipu);
failed_submodules_init:
	FUNC15(ipu);
out_failed_irq:
out_failed_reset:
	FUNC4(ipu->clk);
	return ret;
}