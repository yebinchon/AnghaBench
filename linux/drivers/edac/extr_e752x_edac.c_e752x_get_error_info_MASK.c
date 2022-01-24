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
struct pci_dev {int dummy; } ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct e752x_pvt {struct pci_dev* dev_d0f1; TYPE_1__* dev_info; } ;
struct e752x_error_info {int ferr_global; int nsi_ferr; int hi_ferr; int buf_ferr; int dram_sec1_add; int dram_ded_add; int dram_scrb_add; int dram_retr_add; int nerr_global; int nsi_nerr; int hi_nerr; int buf_nerr; int dram_sec2_add; scalar_t__ dram_nerr; scalar_t__ sysbus_nerr; scalar_t__ dram_sec2_syndrome; scalar_t__ dram_ferr; scalar_t__ sysbus_ferr; scalar_t__ dram_sec1_syndrome; } ;
struct TYPE_2__ {scalar_t__ err_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E752X_BUF_FERR ; 
 int /*<<< orphan*/  E752X_BUF_NERR ; 
 int /*<<< orphan*/  E752X_DRAM_DED_ADD ; 
 int /*<<< orphan*/  E752X_DRAM_FERR ; 
 int /*<<< orphan*/  E752X_DRAM_NERR ; 
 int /*<<< orphan*/  E752X_DRAM_RETR_ADD ; 
 int /*<<< orphan*/  E752X_DRAM_SCRB_ADD ; 
 int /*<<< orphan*/  E752X_DRAM_SEC1_ADD ; 
 int /*<<< orphan*/  E752X_DRAM_SEC1_SYNDROME ; 
 int /*<<< orphan*/  E752X_DRAM_SEC2_ADD ; 
 int /*<<< orphan*/  E752X_DRAM_SEC2_SYNDROME ; 
 int /*<<< orphan*/  E752X_FERR_GLOBAL ; 
 int /*<<< orphan*/  E752X_HI_FERR ; 
 int /*<<< orphan*/  E752X_HI_NERR ; 
 int /*<<< orphan*/  E752X_NERR_GLOBAL ; 
 int /*<<< orphan*/  E752X_SYSBUS_FERR ; 
 int /*<<< orphan*/  E752X_SYSBUS_NERR ; 
 int /*<<< orphan*/  I3100_NSI_FERR ; 
 int /*<<< orphan*/  I3100_NSI_NERR ; 
 int NSI_ERR_MASK ; 
 scalar_t__ PCI_DEVICE_ID_INTEL_3100_1_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct e752x_error_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct mem_ctl_info *mci,
				 struct e752x_error_info *info)
{
	struct pci_dev *dev;
	struct e752x_pvt *pvt;

	FUNC0(info, 0, sizeof(*info));
	pvt = (struct e752x_pvt *)mci->pvt_info;
	dev = pvt->dev_d0f1;
	FUNC2(dev, E752X_FERR_GLOBAL, &info->ferr_global);

	if (info->ferr_global) {
		if (pvt->dev_info->err_dev == PCI_DEVICE_ID_INTEL_3100_1_ERR) {
			FUNC2(dev, I3100_NSI_FERR,
					     &info->nsi_ferr);
			info->hi_ferr = 0;
		} else {
			FUNC1(dev, E752X_HI_FERR,
					     &info->hi_ferr);
			info->nsi_ferr = 0;
		}
		FUNC3(dev, E752X_SYSBUS_FERR,
				&info->sysbus_ferr);
		FUNC1(dev, E752X_BUF_FERR, &info->buf_ferr);
		FUNC3(dev, E752X_DRAM_FERR, &info->dram_ferr);
		FUNC2(dev, E752X_DRAM_SEC1_ADD,
				&info->dram_sec1_add);
		FUNC3(dev, E752X_DRAM_SEC1_SYNDROME,
				&info->dram_sec1_syndrome);
		FUNC2(dev, E752X_DRAM_DED_ADD,
				&info->dram_ded_add);
		FUNC2(dev, E752X_DRAM_SCRB_ADD,
				&info->dram_scrb_add);
		FUNC2(dev, E752X_DRAM_RETR_ADD,
				&info->dram_retr_add);

		/* ignore the reserved bits just in case */
		if (info->hi_ferr & 0x7f)
			FUNC5(dev, E752X_HI_FERR,
					info->hi_ferr);

		if (info->nsi_ferr & NSI_ERR_MASK)
			FUNC6(dev, I3100_NSI_FERR,
					info->nsi_ferr);

		if (info->sysbus_ferr)
			FUNC7(dev, E752X_SYSBUS_FERR,
					info->sysbus_ferr);

		if (info->buf_ferr & 0x0f)
			FUNC5(dev, E752X_BUF_FERR,
					info->buf_ferr);

		if (info->dram_ferr)
			FUNC4(pvt->dev_d0f1, E752X_DRAM_FERR,
					 info->dram_ferr, info->dram_ferr);

		FUNC6(dev, E752X_FERR_GLOBAL,
				info->ferr_global);
	}

	FUNC2(dev, E752X_NERR_GLOBAL, &info->nerr_global);

	if (info->nerr_global) {
		if (pvt->dev_info->err_dev == PCI_DEVICE_ID_INTEL_3100_1_ERR) {
			FUNC2(dev, I3100_NSI_NERR,
					     &info->nsi_nerr);
			info->hi_nerr = 0;
		} else {
			FUNC1(dev, E752X_HI_NERR,
					     &info->hi_nerr);
			info->nsi_nerr = 0;
		}
		FUNC3(dev, E752X_SYSBUS_NERR,
				&info->sysbus_nerr);
		FUNC1(dev, E752X_BUF_NERR, &info->buf_nerr);
		FUNC3(dev, E752X_DRAM_NERR, &info->dram_nerr);
		FUNC2(dev, E752X_DRAM_SEC2_ADD,
				&info->dram_sec2_add);
		FUNC3(dev, E752X_DRAM_SEC2_SYNDROME,
				&info->dram_sec2_syndrome);

		if (info->hi_nerr & 0x7f)
			FUNC5(dev, E752X_HI_NERR,
					info->hi_nerr);

		if (info->nsi_nerr & NSI_ERR_MASK)
			FUNC6(dev, I3100_NSI_NERR,
					info->nsi_nerr);

		if (info->sysbus_nerr)
			FUNC7(dev, E752X_SYSBUS_NERR,
					info->sysbus_nerr);

		if (info->buf_nerr & 0x0f)
			FUNC5(dev, E752X_BUF_NERR,
					info->buf_nerr);

		if (info->dram_nerr)
			FUNC4(pvt->dev_d0f1, E752X_DRAM_NERR,
					 info->dram_nerr, info->dram_nerr);

		FUNC6(dev, E752X_NERR_GLOBAL,
				info->nerr_global);
	}
}