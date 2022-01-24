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
 int LC_CURRENT_DATA_RATE_MASK ; 
 int LC_CURRENT_DATA_RATE_SHIFT ; 
 int LC_DETECTED_LINK_WIDTH_MASK ; 
 int LC_DETECTED_LINK_WIDTH_SHIFT ; 
 int LC_FORCE_DIS_HW_SPEED_CHANGE ; 
 int LC_FORCE_DIS_SW_SPEED_CHANGE ; 
 int LC_FORCE_EN_SW_SPEED_CHANGE ; 
 int LC_INITIATE_LINK_SPEED_CHANGE ; 
 int LC_LINK_WIDTH_MASK ; 
 int LC_LINK_WIDTH_SHIFT ; 
 int LC_OPERATING_LINK_WIDTH_MASK ; 
 int LC_OPERATING_LINK_WIDTH_SHIFT ; 
 int LC_RECONFIG_NOW ; 
 int LC_REDO_EQ ; 
 int LC_RENEGOTIATE_EN ; 
 int LC_RENEGOTIATION_SUPPORT ; 
 int LC_SET_QUIESCE ; 
 int LC_UPCONFIGURE_DIS ; 
 int LC_UPCONFIGURE_SUPPORT ; 
 int /*<<< orphan*/  PCIE_LC_CNTL4 ; 
 int /*<<< orphan*/  PCIE_LC_LINK_WIDTH_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_SPEED_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_STATUS1 ; 
 scalar_t__ PCI_EXP_DEVSTA ; 
 int PCI_EXP_DEVSTA_TRPND ; 
 scalar_t__ PCI_EXP_LNKCTL ; 
 scalar_t__ PCI_EXP_LNKCTL2 ; 
 int PCI_EXP_LNKCTL_HAWD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ amdgpu_pcie_gen2 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct amdgpu_device *adev)
{
	struct pci_dev *root = adev->pdev->bus->self;
	int bridge_pos, gpu_pos;
	u32 speed_cntl, current_data_rate;
	int i;
	u16 tmp16;

	if (FUNC5(adev->pdev->bus))
		return;

	if (amdgpu_pcie_gen2 == 0)
		return;

	if (adev->flags & AMD_IS_APU)
		return;

	if (!(adev->pm.pcie_gen_mask & (CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2 |
					CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3)))
		return;

	speed_cntl = FUNC2(PCIE_LC_SPEED_CNTL);
	current_data_rate = (speed_cntl & LC_CURRENT_DATA_RATE_MASK) >>
		LC_CURRENT_DATA_RATE_SHIFT;
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

	bridge_pos = FUNC6(root);
	if (!bridge_pos)
		return;

	gpu_pos = FUNC6(adev->pdev);
	if (!gpu_pos)
		return;

	if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3) {
		if (current_data_rate != 2) {
			u16 bridge_cfg, gpu_cfg;
			u16 bridge_cfg2, gpu_cfg2;
			u32 max_lw, current_lw, tmp;

			FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, &bridge_cfg);
			FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, &gpu_cfg);

			tmp16 = bridge_cfg | PCI_EXP_LNKCTL_HAWD;
			FUNC8(root, bridge_pos + PCI_EXP_LNKCTL, tmp16);

			tmp16 = gpu_cfg | PCI_EXP_LNKCTL_HAWD;
			FUNC8(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, tmp16);

			tmp = FUNC1(PCIE_LC_STATUS1);
			max_lw = (tmp & LC_DETECTED_LINK_WIDTH_MASK) >> LC_DETECTED_LINK_WIDTH_SHIFT;
			current_lw = (tmp & LC_OPERATING_LINK_WIDTH_MASK) >> LC_OPERATING_LINK_WIDTH_SHIFT;

			if (current_lw < max_lw) {
				tmp = FUNC2(PCIE_LC_LINK_WIDTH_CNTL);
				if (tmp & LC_RENEGOTIATION_SUPPORT) {
					tmp &= ~(LC_LINK_WIDTH_MASK | LC_UPCONFIGURE_DIS);
					tmp |= (max_lw << LC_LINK_WIDTH_SHIFT);
					tmp |= LC_UPCONFIGURE_SUPPORT | LC_RENEGOTIATE_EN | LC_RECONFIG_NOW;
					FUNC3(PCIE_LC_LINK_WIDTH_CNTL, tmp);
				}
			}

			for (i = 0; i < 10; i++) {
				FUNC7(adev->pdev, gpu_pos + PCI_EXP_DEVSTA, &tmp16);
				if (tmp16 & PCI_EXP_DEVSTA_TRPND)
					break;

				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, &bridge_cfg);
				FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, &gpu_cfg);

				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL2, &bridge_cfg2);
				FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &gpu_cfg2);

				tmp = FUNC2(PCIE_LC_CNTL4);
				tmp |= LC_SET_QUIESCE;
				FUNC3(PCIE_LC_CNTL4, tmp);

				tmp = FUNC2(PCIE_LC_CNTL4);
				tmp |= LC_REDO_EQ;
				FUNC3(PCIE_LC_CNTL4, tmp);

				FUNC4(100);

				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, &tmp16);
				tmp16 &= ~PCI_EXP_LNKCTL_HAWD;
				tmp16 |= (bridge_cfg & PCI_EXP_LNKCTL_HAWD);
				FUNC8(root, bridge_pos + PCI_EXP_LNKCTL, tmp16);

				FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, &tmp16);
				tmp16 &= ~PCI_EXP_LNKCTL_HAWD;
				tmp16 |= (gpu_cfg & PCI_EXP_LNKCTL_HAWD);
				FUNC8(adev->pdev, gpu_pos + PCI_EXP_LNKCTL, tmp16);

				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL2, &tmp16);
				tmp16 &= ~((1 << 4) | (7 << 9));
				tmp16 |= (bridge_cfg2 & ((1 << 4) | (7 << 9)));
				FUNC8(root, bridge_pos + PCI_EXP_LNKCTL2, tmp16);

				FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &tmp16);
				tmp16 &= ~((1 << 4) | (7 << 9));
				tmp16 |= (gpu_cfg2 & ((1 << 4) | (7 << 9)));
				FUNC8(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, tmp16);

				tmp = FUNC2(PCIE_LC_CNTL4);
				tmp &= ~LC_SET_QUIESCE;
				FUNC3(PCIE_LC_CNTL4, tmp);
			}
		}
	}

	speed_cntl |= LC_FORCE_EN_SW_SPEED_CHANGE | LC_FORCE_DIS_HW_SPEED_CHANGE;
	speed_cntl &= ~LC_FORCE_DIS_SW_SPEED_CHANGE;
	FUNC3(PCIE_LC_SPEED_CNTL, speed_cntl);

	FUNC7(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &tmp16);
	tmp16 &= ~0xf;
	if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3)
		tmp16 |= 3;
	else if (adev->pm.pcie_gen_mask & CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2)
		tmp16 |= 2;
	else
		tmp16 |= 1;
	FUNC8(adev->pdev, gpu_pos + PCI_EXP_LNKCTL2, tmp16);

	speed_cntl = FUNC2(PCIE_LC_SPEED_CNTL);
	speed_cntl |= LC_INITIATE_LINK_SPEED_CHANGE;
	FUNC3(PCIE_LC_SPEED_CNTL, speed_cntl);

	for (i = 0; i < adev->usec_timeout; i++) {
		speed_cntl = FUNC2(PCIE_LC_SPEED_CNTL);
		if ((speed_cntl & LC_INITIATE_LINK_SPEED_CHANGE) == 0)
			break;
		FUNC9(1);
	}
}