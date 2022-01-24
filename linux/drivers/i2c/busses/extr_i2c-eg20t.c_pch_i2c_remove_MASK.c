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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct adapter_info {int ch_num; TYPE_1__* pch_data; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pch_base_address; int /*<<< orphan*/  pch_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct adapter_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct adapter_info* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	int i;
	struct adapter_info *adap_info = FUNC5(pdev);

	FUNC0(pdev->irq, adap_info);

	for (i = 0; i < adap_info->ch_num; i++) {
		FUNC3(&adap_info->pch_data[i]);
		FUNC1(&adap_info->pch_data[i].pch_adapter);
	}

	if (adap_info->pch_data[0].pch_base_address)
		FUNC6(pdev, adap_info->pch_data[0].pch_base_address);

	for (i = 0; i < adap_info->ch_num; i++)
		adap_info->pch_data[i].pch_base_address = NULL;

	FUNC7(pdev);

	FUNC4(pdev);
	FUNC2(adap_info);
}