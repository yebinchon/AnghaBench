#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {TYPE_2__* bus; } ;
struct TYPE_3__ {int pcie_gen_mask; } ;
struct amdgpu_device {int flags; int usec_timeout; struct pci_dev* pdev; TYPE_1__ pm; } ;
struct TYPE_4__ {struct pci_dev* self; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2 ; 
 int CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PCIE_LC_CNTL4__LC_REDO_EQ_MASK ; 
 int PCIE_LC_CNTL4__LC_SET_QUIESCE_MASK ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_MASK ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH__SHIFT ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_RECONFIG_NOW_MASK ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATE_EN_MASK ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATION_SUPPORT_MASK ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_DIS_MASK ; 
 int PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_SUPPORT_MASK ; 
 int PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE_MASK ; 
 int PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE__SHIFT ; 
 int PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_HW_SPEED_CHANGE_MASK ; 
 int PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_SW_SPEED_CHANGE_MASK ; 
 int PCIE_LC_SPEED_CNTL__LC_FORCE_EN_SW_SPEED_CHANGE_MASK ; 
 int PCIE_LC_SPEED_CNTL__LC_INITIATE_LINK_SPEED_CHANGE_MASK ; 
 int PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH_MASK ; 
 int PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH__SHIFT ; 
 int PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH_MASK ; 
 int PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH__SHIFT ; 
 scalar_t__ PCI_EXP_DEVSTA ; 
 int PCI_EXP_DEVSTA_TRPND ; 
 scalar_t__ PCI_EXP_LNKCTL ; 
 scalar_t__ PCI_EXP_LNKCTL2 ; 
 int PCI_EXP_LNKCTL_HAWD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ amdgpu_pcie_gen2 ; 
 int /*<<< orphan*/  ixPCIE_LC_CNTL4 ; 
 int /*<<< orphan*/  ixPCIE_LC_LINK_WIDTH_CNTL ; 
 int /*<<< orphan*/  ixPCIE_LC_SPEED_CNTL ; 
 int /*<<< orphan*/  ixPCIE_LC_STATUS1 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct amdgpu_device *adev)
{
	struct pci_dev *root = adev->pdev->bus->self;
	int bridge_pos, gpu_pos;
	u32 speed_cntl, current_data_rate;
	int i;
	u16 tmp16;

	if (FUNC4(adev->pdev->bus))
		return;

	if (amdgpu_pcie_gen2 == 0)
		return;

	if (adev->flags & AMD_IS_APU)
		return;

	if (!(adev->pm.pcie_gen_mask & (CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2 |
					CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3)))
		return;

	speed_cntl = FUNC1(ixPCIE_LC_SPEED_CNTL);
	current_data_rate = (speed_cntl & PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE_MASK) >>
		PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE__SHIFT;
	if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3) {
		if (current_data_rate == 2) {
			FUNC0("PCIE gen 3 link speeds already enabled\n");
			return;
		}
		FUNC0("enabling PCIE gen 3 link speeds, disable with amdgpu.pcie_gen2=0\n");
	} else if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2) {
		if (current_data_rate == 1) {
			FUNC0("PCIE gen 2 link speeds already enabled\n");
			return;
		}
		FUNC0("enabling PCIE gen 2 link speeds, disable with amdgpu.pcie_gen2=0\n");
	}

	bridge_pos = FUNC5(root);
	if (!bridge_pos)
		return;

	gpu_pos = FUNC5(adev->pdev);
	if (!gpu_pos)
		return;

	if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3) {
		/* re-try equalization if gen3 is not already enabled */
		if (current_data_rate != 2) {
			u16 bridge_cfg, gpu_cfg;
			u16 bridge_cfg2, gpu_cfg2;
			u32 max_lw, current_lw, tmp;

			FUNC6(root, bridge_pos + PCI_EXP_LNKCTL, &bridge_cfg);
			FUNC6(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, &gpu_cfg);

			tmp16 = bridge_cfg | PCI_EXP_LNKCTL_HAWD;
			FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, tmp16);

			tmp16 = gpu_cfg | PCI_EXP_LNKCTL_HAWD;
			FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, tmp16);

			tmp = FUNC1(ixPCIE_LC_STATUS1);
			max_lw = (tmp & PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH_MASK) >>
				PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH__SHIFT;
			current_lw = (tmp & PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH_MASK)
				>> PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH__SHIFT;

			if (current_lw < max_lw) {
				tmp = FUNC1(ixPCIE_LC_LINK_WIDTH_CNTL);
				if (tmp & PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATION_SUPPORT_MASK) {
					tmp &= ~(PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_MASK |
						PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_DIS_MASK);
					tmp |= (max_lw <<
						PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH__SHIFT);
					tmp |= PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_SUPPORT_MASK |
					PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATE_EN_MASK |
					PCIE_LC_LINK_WIDTH_CNTL__LC_RECONFIG_NOW_MASK;
					FUNC2(ixPCIE_LC_LINK_WIDTH_CNTL, tmp);
				}
			}

			for (i = 0; i < 10; i++) {
				/* check status */
				FUNC6(adev->pdev, gpu_pos + PCI_EXP_DEVSTA, &tmp16);
				if (tmp16 & PCI_EXP_DEVSTA_TRPND)
					break;

				FUNC6(root, bridge_pos + PCI_EXP_LNKCTL, &bridge_cfg);
				FUNC6(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, &gpu_cfg);

				FUNC6(root, bridge_pos + PCI_EXP_LNKCTL2, &bridge_cfg2);
				FUNC6(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &gpu_cfg2);

				tmp = FUNC1(ixPCIE_LC_CNTL4);
				tmp |= PCIE_LC_CNTL4__LC_SET_QUIESCE_MASK;
				FUNC2(ixPCIE_LC_CNTL4, tmp);

				tmp = FUNC1(ixPCIE_LC_CNTL4);
				tmp |= PCIE_LC_CNTL4__LC_REDO_EQ_MASK;
				FUNC2(ixPCIE_LC_CNTL4, tmp);

				FUNC3(100);

				/* linkctl */
				FUNC6(root, bridge_pos + PCI_EXP_LNKCTL, &tmp16);
				tmp16 &= ~PCI_EXP_LNKCTL_HAWD;
				tmp16 |= (bridge_cfg & PCI_EXP_LNKCTL_HAWD);
				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, tmp16);

				FUNC6(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, &tmp16);
				tmp16 &= ~PCI_EXP_LNKCTL_HAWD;
				tmp16 |= (gpu_cfg & PCI_EXP_LNKCTL_HAWD);
				FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, tmp16);

				/* linkctl2 */
				FUNC6(root, bridge_pos + PCI_EXP_LNKCTL2, &tmp16);
				tmp16 &= ~((1 << 4) | (7 << 9));
				tmp16 |= (bridge_cfg2 & ((1 << 4) | (7 << 9)));
				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL2, tmp16);

				FUNC6(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &tmp16);
				tmp16 &= ~((1 << 4) | (7 << 9));
				tmp16 |= (gpu_cfg2 & ((1 << 4) | (7 << 9)));
				FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, tmp16);

				tmp = FUNC1(ixPCIE_LC_CNTL4);
				tmp &= ~PCIE_LC_CNTL4__LC_SET_QUIESCE_MASK;
				FUNC2(ixPCIE_LC_CNTL4, tmp);
			}
		}
	}

	/* set the link speed */
	speed_cntl |= PCIE_LC_SPEED_CNTL__LC_FORCE_EN_SW_SPEED_CHANGE_MASK |
		PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_HW_SPEED_CHANGE_MASK;
	speed_cntl &= ~PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_SW_SPEED_CHANGE_MASK;
	FUNC2(ixPCIE_LC_SPEED_CNTL, speed_cntl);

	FUNC6(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &tmp16);
	tmp16 &= ~0xf;
	if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3)
		tmp16 |= 3; /* gen3 */
	else if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2)
		tmp16 |= 2; /* gen2 */
	else
		tmp16 |= 1; /* gen1 */
	FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, tmp16);

	speed_cntl = FUNC1(ixPCIE_LC_SPEED_CNTL);
	speed_cntl |= PCIE_LC_SPEED_CNTL__LC_INITIATE_LINK_SPEED_CHANGE_MASK;
	FUNC2(ixPCIE_LC_SPEED_CNTL, speed_cntl);

	for (i = 0; i < adev->usec_timeout; i++) {
		speed_cntl = FUNC1(ixPCIE_LC_SPEED_CNTL);
		if ((speed_cntl & PCIE_LC_SPEED_CNTL__LC_INITIATE_LINK_SPEED_CHANGE_MASK) == 0)
			break;
		FUNC8(1);
	}
}