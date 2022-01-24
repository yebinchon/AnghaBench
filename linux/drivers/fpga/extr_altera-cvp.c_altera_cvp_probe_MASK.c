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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct fpga_manager {int dummy; } ;
struct altera_cvp_conf {int vsec_offset; scalar_t__ map; int /*<<< orphan*/  mgr_name; int /*<<< orphan*/  write_data; int /*<<< orphan*/ * priv; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 char* ALTERA_CVP_MGR_NAME ; 
 int /*<<< orphan*/  CVP_BAR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PCI_COMMAND ; 
 scalar_t__ PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_VNDR ; 
 int V1_VSEC_OFFSET ; 
 scalar_t__ VSE_CVP_STATUS ; 
 int VSE_CVP_STATUS_CVP_EN ; 
 scalar_t__ VSE_PCIE_EXT_CAP_ID ; 
 scalar_t__ VSE_PCIE_EXT_CAP_ID_VAL ; 
 int /*<<< orphan*/  altera_cvp_ops ; 
 int /*<<< orphan*/  altera_cvp_write_data_config ; 
 int /*<<< orphan*/  altera_cvp_write_data_iomem ; 
 int /*<<< orphan*/  cvp_priv_v1 ; 
 int /*<<< orphan*/  cvp_priv_v2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct fpga_manager* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct altera_cvp_conf*) ; 
 struct altera_cvp_conf* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fpga_manager*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__) ; 
 char* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev,
			    const struct pci_device_id *dev_id)
{
	struct altera_cvp_conf *conf;
	struct fpga_manager *mgr;
	int ret, offset;
	u16 cmd, val;
	u32 regval;

	/* Discover the Vendor Specific Offset for this device */
	offset = FUNC5(pdev, 0, PCI_EXT_CAP_ID_VNDR);
	if (!offset) {
		FUNC0(&pdev->dev, "No Vendor Specific Offset.\n");
		return -ENODEV;
	}

	/*
	 * First check if this is the expected FPGA device. PCI config
	 * space access works without enabling the PCI device, memory
	 * space access is enabled further down.
	 */
	FUNC10(pdev, offset + VSE_PCIE_EXT_CAP_ID, &val);
	if (val != VSE_PCIE_EXT_CAP_ID_VAL) {
		FUNC0(&pdev->dev, "Wrong EXT_CAP_ID value 0x%x\n", val);
		return -ENODEV;
	}

	FUNC9(pdev, offset + VSE_CVP_STATUS, &regval);
	if (!(regval & VSE_CVP_STATUS_CVP_EN)) {
		FUNC0(&pdev->dev,
			"CVP is disabled for this device: CVP_STATUS Reg 0x%x\n",
			regval);
		return -ENODEV;
	}

	conf = FUNC3(&pdev->dev, sizeof(*conf), GFP_KERNEL);
	if (!conf)
		return -ENOMEM;

	conf->vsec_offset = offset;

	/*
	 * Enable memory BAR access. We cannot use pci_enable_device() here
	 * because it will make the driver unusable with FPGA devices that
	 * have additional big IOMEM resources (e.g. 4GiB BARs) on 32-bit
	 * platform. Such BARs will not have an assigned address range and
	 * pci_enable_device() will fail, complaining about not claimed BAR,
	 * even if the concerned BAR is not needed for FPGA configuration
	 * at all. Thus, enable the device via PCI config space command.
	 */
	FUNC10(pdev, PCI_COMMAND, &cmd);
	if (!(cmd & PCI_COMMAND_MEMORY)) {
		cmd |= PCI_COMMAND_MEMORY;
		FUNC14(pdev, PCI_COMMAND, cmd);
	}

	ret = FUNC12(pdev, CVP_BAR, "CVP");
	if (ret) {
		FUNC0(&pdev->dev, "Requesting CVP BAR region failed\n");
		goto err_disable;
	}

	conf->pci_dev = pdev;
	conf->write_data = altera_cvp_write_data_iomem;

	if (conf->vsec_offset == V1_VSEC_OFFSET)
		conf->priv = &cvp_priv_v1;
	else
		conf->priv = &cvp_priv_v2;

	conf->map = FUNC6(pdev, CVP_BAR, 0);
	if (!conf->map) {
		FUNC1(&pdev->dev, "Mapping CVP BAR failed\n");
		conf->write_data = altera_cvp_write_data_config;
	}

	FUNC15(conf->mgr_name, sizeof(conf->mgr_name), "%s @%s",
		 ALTERA_CVP_MGR_NAME, FUNC8(pdev));

	mgr = FUNC2(&pdev->dev, conf->mgr_name,
				   &altera_cvp_ops, conf);
	if (!mgr) {
		ret = -ENOMEM;
		goto err_unmap;
	}

	FUNC13(pdev, mgr);

	ret = FUNC4(mgr);
	if (ret)
		goto err_unmap;

	return 0;

err_unmap:
	if (conf->map)
		FUNC7(pdev, conf->map);
	FUNC11(pdev, CVP_BAR);
err_disable:
	cmd &= ~PCI_COMMAND_MEMORY;
	FUNC14(pdev, PCI_COMMAND, cmd);
	return ret;
}