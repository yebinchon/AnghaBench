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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct fw_ohci {scalar_t__ next_config_rom; scalar_t__ config_rom; scalar_t__ misc_buffer; int /*<<< orphan*/  registers; struct fw_ohci* ir_context_list; struct fw_ohci* it_context_list; int /*<<< orphan*/  at_response_ctx; int /*<<< orphan*/  at_request_ctx; int /*<<< orphan*/  misc_buffer_bus; TYPE_1__ card; int /*<<< orphan*/  ar_response_ctx; int /*<<< orphan*/  ar_request_ctx; int /*<<< orphan*/  config_rom_bus; int /*<<< orphan*/  next_config_rom_bus; int /*<<< orphan*/  bus_reset_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ROM_SIZE ; 
 int /*<<< orphan*/  OHCI1394_HCControlSet ; 
 int OHCI1394_HCControl_LPS ; 
 int /*<<< orphan*/  OHCI1394_IntMaskClear ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 struct fw_ohci* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct fw_ohci*) ; 

__attribute__((used)) static void FUNC18(struct pci_dev *dev)
{
	struct fw_ohci *ohci = FUNC11(dev);

	/*
	 * If the removal is happening from the suspend state, LPS won't be
	 * enabled and host registers (eg., IntMaskClear) won't be accessible.
	 */
	if (FUNC15(ohci, OHCI1394_HCControlSet) & OHCI1394_HCControl_LPS) {
		FUNC16(ohci, OHCI1394_IntMaskClear, ~0);
		FUNC5(ohci);
	}
	FUNC1(&ohci->bus_reset_work);
	FUNC7(&ohci->card);

	/*
	 * FIXME: Fail all pending packets here, now that the upper
	 * layers can't queue any more.
	 */

	FUNC17(ohci);
	FUNC6(dev->irq, ohci);

	if (ohci->next_config_rom && ohci->next_config_rom != ohci->config_rom)
		FUNC4(ohci->card.device, CONFIG_ROM_SIZE,
				  ohci->next_config_rom, ohci->next_config_rom_bus);
	if (ohci->config_rom)
		FUNC4(ohci->card.device, CONFIG_ROM_SIZE,
				  ohci->config_rom, ohci->config_rom_bus);
	FUNC0(&ohci->ar_request_ctx);
	FUNC0(&ohci->ar_response_ctx);
	FUNC4(ohci->card.device, PAGE_SIZE,
			  ohci->misc_buffer, ohci->misc_buffer_bus);
	FUNC2(&ohci->at_request_ctx);
	FUNC2(&ohci->at_response_ctx);
	FUNC8(ohci->it_context_list);
	FUNC8(ohci->ir_context_list);
	FUNC10(dev);
	FUNC12(dev, ohci->registers);
	FUNC13(dev, 0);
	FUNC9(dev);
	FUNC8(ohci);
	FUNC14(dev);

	FUNC3(&dev->dev, "removed fw-ohci device\n");
}