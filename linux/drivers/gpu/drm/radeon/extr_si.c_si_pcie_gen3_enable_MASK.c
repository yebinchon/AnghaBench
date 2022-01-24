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
typedef  int u32 ;
typedef  int u16 ;
struct radeon_device {int flags; int usec_timeout; struct pci_dev* pdev; } ;
struct pci_dev {TYPE_1__* bus; } ;
typedef  enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
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
 int PCIE_SPEED_5_0GT ; 
 int PCIE_SPEED_8_0GT ; 
 scalar_t__ PCI_EXP_DEVSTA ; 
 int PCI_EXP_DEVSTA_TRPND ; 
 scalar_t__ PCI_EXP_LNKCTL ; 
 scalar_t__ PCI_EXP_LNKCTL2 ; 
 int PCI_EXP_LNKCTL_HAWD ; 
 int PCI_SPEED_UNKNOWN ; 
 int RADEON_IS_IGP ; 
 int RADEON_IS_PCIE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int) ; 
 int FUNC9 (struct pci_dev*) ; 
 scalar_t__ radeon_pcie_gen2 ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct radeon_device *rdev)
{
	struct pci_dev *root = rdev->pdev->bus->self;
	enum pci_bus_speed speed_cap;
	int bridge_pos, gpu_pos;
	u32 speed_cntl, current_data_rate;
	int i;
	u16 tmp16;

	if (FUNC5(rdev->pdev->bus))
		return;

	if (radeon_pcie_gen2 == 0)
		return;

	if (rdev->flags & RADEON_IS_IGP)
		return;

	if (!(rdev->flags & RADEON_IS_PCIE))
		return;

	speed_cap = FUNC9(root);
	if (speed_cap == PCI_SPEED_UNKNOWN)
		return;

	if ((speed_cap != PCIE_SPEED_8_0GT) &&
	    (speed_cap != PCIE_SPEED_5_0GT))
		return;

	speed_cntl = FUNC2(PCIE_LC_SPEED_CNTL);
	current_data_rate = (speed_cntl & LC_CURRENT_DATA_RATE_MASK) >>
		LC_CURRENT_DATA_RATE_SHIFT;
	if (speed_cap == PCIE_SPEED_8_0GT) {
		if (current_data_rate == 2) {
			FUNC0("PCIE gen 3 link speeds already enabled\n");
			return;
		}
		FUNC0("enabling PCIE gen 3 link speeds, disable with radeon.pcie_gen2=0\n");
	} else if (speed_cap == PCIE_SPEED_5_0GT) {
		if (current_data_rate == 1) {
			FUNC0("PCIE gen 2 link speeds already enabled\n");
			return;
		}
		FUNC0("enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\n");
	}

	bridge_pos = FUNC6(root);
	if (!bridge_pos)
		return;

	gpu_pos = FUNC6(rdev->pdev);
	if (!gpu_pos)
		return;

	if (speed_cap == PCIE_SPEED_8_0GT) {
		/* re-try equalization if gen3 is not already enabled */
		if (current_data_rate != 2) {
			u16 bridge_cfg, gpu_cfg;
			u16 bridge_cfg2, gpu_cfg2;
			u32 max_lw, current_lw, tmp;

			FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, &bridge_cfg);
			FUNC7(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL, &gpu_cfg);

			tmp16 = bridge_cfg | PCI_EXP_LNKCTL_HAWD;
			FUNC8(root, bridge_pos + PCI_EXP_LNKCTL, tmp16);

			tmp16 = gpu_cfg | PCI_EXP_LNKCTL_HAWD;
			FUNC8(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL, tmp16);

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
				/* check status */
				FUNC7(rdev->pdev, gpu_pos + PCI_EXP_DEVSTA, &tmp16);
				if (tmp16 & PCI_EXP_DEVSTA_TRPND)
					break;

				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, &bridge_cfg);
				FUNC7(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL, &gpu_cfg);

				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL2, &bridge_cfg2);
				FUNC7(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &gpu_cfg2);

				tmp = FUNC2(PCIE_LC_CNTL4);
				tmp |= LC_SET_QUIESCE;
				FUNC3(PCIE_LC_CNTL4, tmp);

				tmp = FUNC2(PCIE_LC_CNTL4);
				tmp |= LC_REDO_EQ;
				FUNC3(PCIE_LC_CNTL4, tmp);

				FUNC4(100);

				/* linkctl */
				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL, &tmp16);
				tmp16 &= ~PCI_EXP_LNKCTL_HAWD;
				tmp16 |= (bridge_cfg & PCI_EXP_LNKCTL_HAWD);
				FUNC8(root, bridge_pos + PCI_EXP_LNKCTL, tmp16);

				FUNC7(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL, &tmp16);
				tmp16 &= ~PCI_EXP_LNKCTL_HAWD;
				tmp16 |= (gpu_cfg & PCI_EXP_LNKCTL_HAWD);
				FUNC8(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL, tmp16);

				/* linkctl2 */
				FUNC7(root, bridge_pos + PCI_EXP_LNKCTL2, &tmp16);
				tmp16 &= ~((1 << 4) | (7 << 9));
				tmp16 |= (bridge_cfg2 & ((1 << 4) | (7 << 9)));
				FUNC8(root, bridge_pos + PCI_EXP_LNKCTL2, tmp16);

				FUNC7(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &tmp16);
				tmp16 &= ~((1 << 4) | (7 << 9));
				tmp16 |= (gpu_cfg2 & ((1 << 4) | (7 << 9)));
				FUNC8(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL2, tmp16);

				tmp = FUNC2(PCIE_LC_CNTL4);
				tmp &= ~LC_SET_QUIESCE;
				FUNC3(PCIE_LC_CNTL4, tmp);
			}
		}
	}

	/* set the link speed */
	speed_cntl |= LC_FORCE_EN_SW_SPEED_CHANGE | LC_FORCE_DIS_HW_SPEED_CHANGE;
	speed_cntl &= ~LC_FORCE_DIS_SW_SPEED_CHANGE;
	FUNC3(PCIE_LC_SPEED_CNTL, speed_cntl);

	FUNC7(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL2, &tmp16);
	tmp16 &= ~0xf;
	if (speed_cap == PCIE_SPEED_8_0GT)
		tmp16 |= 3; /* gen3 */
	else if (speed_cap == PCIE_SPEED_5_0GT)
		tmp16 |= 2; /* gen2 */
	else
		tmp16 |= 1; /* gen1 */
	FUNC8(rdev->pdev, gpu_pos + PCI_EXP_LNKCTL2, tmp16);

	speed_cntl = FUNC2(PCIE_LC_SPEED_CNTL);
	speed_cntl |= LC_INITIATE_LINK_SPEED_CHANGE;
	FUNC3(PCIE_LC_SPEED_CNTL, speed_cntl);

	for (i = 0; i < rdev->usec_timeout; i++) {
		speed_cntl = FUNC2(PCIE_LC_SPEED_CNTL);
		if ((speed_cntl & LC_INITIATE_LINK_SPEED_CHANGE) == 0)
			break;
		FUNC10(1);
	}
}