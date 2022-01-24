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
struct TYPE_2__ {int reset; } ;
union zip_cmd_ctl {int u_reg64; TYPE_1__ s; } ;
struct zip_device {size_t index; scalar_t__ reg_base; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ ZIP_CMD_CTL ; 
 int ZIP_NUM_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct zip_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zip_device*,int) ; 
 int /*<<< orphan*/ ** zip_dev ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct zip_device *zip = FUNC2(pdev);
	union zip_cmd_ctl cmd_ctl;
	int q = 0;

	if (!zip)
		return;

	if (zip->reg_base) {
		cmd_ctl.u_reg64 = 0x0ull;
		cmd_ctl.s.reset = 1;  /* Forces ZIP cores to do reset */
		FUNC6(cmd_ctl.u_reg64, (zip->reg_base + ZIP_CMD_CTL));
		FUNC0(zip->reg_base);
	}

	FUNC3(pdev);
	FUNC1(pdev);

	/*
	 * Free Command Queue buffers. This free should be called for all
	 * the enabled Queues.
	 */
	for (q = 0; q < ZIP_NUM_QUEUES; q++)
		FUNC5(zip, q);

	FUNC4(pdev, NULL);
	/* remove zip device from zip device list */
	zip_dev[zip->index] = NULL;
}