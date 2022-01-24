#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ vendor; unsigned short device; unsigned short revision; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct iso_context {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; int /*<<< orphan*/  index; } ;
struct fw_ohci {int quirks; unsigned long long ir_context_channels; int ir_context_support; int ir_context_mask; int n_ir; int it_context_support; int it_context_mask; int n_it; int /*<<< orphan*/ * registers; scalar_t__ misc_buffer_bus; scalar_t__ misc_buffer; TYPE_2__ card; int /*<<< orphan*/  ar_request_ctx; int /*<<< orphan*/  ar_response_ctx; int /*<<< orphan*/  at_request_ctx; int /*<<< orphan*/  at_response_ctx; struct fw_ohci* it_context_list; struct fw_ohci* ir_context_list; scalar_t__ self_id_bus; scalar_t__ self_id; int /*<<< orphan*/  bus_reset_work; int /*<<< orphan*/  phy_reg_mutex; int /*<<< orphan*/  lock; } ;
struct descriptor {int dummy; } ;
struct TYPE_5__ {scalar_t__ vendor; unsigned short device; unsigned short revision; int flags; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int AR_BUFFERS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  OHCI1394_AsReqRcvContextControlSet ; 
 int /*<<< orphan*/  OHCI1394_AsReqTrContextControlSet ; 
 int /*<<< orphan*/  OHCI1394_AsRspRcvContextControlSet ; 
 int /*<<< orphan*/  OHCI1394_AsRspTrContextControlSet ; 
 int /*<<< orphan*/  OHCI1394_BusOptions ; 
 int /*<<< orphan*/  OHCI1394_GUIDHi ; 
 int /*<<< orphan*/  OHCI1394_GUIDLo ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntMaskClear ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntMaskSet ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntMaskClear ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntMaskSet ; 
 int /*<<< orphan*/  OHCI1394_PCI_HCI_Control ; 
 int /*<<< orphan*/  OHCI1394_PhyUpperBound ; 
 scalar_t__ OHCI1394_REGISTER_SIZE ; 
 int /*<<< orphan*/  OHCI1394_Version ; 
 int PAGE_SIZE ; 
 scalar_t__ PCI_ANY_ID ; 
 scalar_t__ PCI_VENDOR_ID_PINNACLE_SYSTEMS ; 
 int QUIRK_NO_MSI ; 
 int SELF_ID_BUF_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ *,struct fw_ohci*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus_reset_work ; 
 int FUNC5 (int /*<<< orphan*/ *,struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct fw_ohci*) ; 
 int FUNC11 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_at_packet ; 
 void* FUNC13 (int) ; 
 int /*<<< orphan*/  irq_handler ; 
 int /*<<< orphan*/  FUNC14 (struct fw_ohci*) ; 
 void* FUNC15 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ohci_driver ; 
 int /*<<< orphan*/  ohci_driver_name ; 
 int /*<<< orphan*/  FUNC17 (struct fw_ohci*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct fw_ohci*,char*,...) ; 
 TYPE_1__* ohci_quirks ; 
 int param_quirks ; 
 scalar_t__ FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/ * FUNC24 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*) ; 
 int FUNC35 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC39(struct pci_dev *dev,
			       const struct pci_device_id *ent)
{
	struct fw_ohci *ohci;
	u32 bus_options, max_receive, link_speed, version;
	u64 guid;
	int i, err;
	size_t size;

	if (dev->vendor == PCI_VENDOR_ID_PINNACLE_SYSTEMS) {
		FUNC7(&dev->dev, "Pinnacle MovieBoard is not yet supported\n");
		return -ENOSYS;
	}

	ohci = FUNC15(sizeof(*ohci), GFP_KERNEL);
	if (ohci == NULL) {
		err = -ENOMEM;
		goto fail;
	}

	FUNC12(&ohci->card, &ohci_driver, &dev->dev);

	FUNC34(dev);

	err = FUNC22(dev);
	if (err) {
		FUNC7(&dev->dev, "failed to enable OHCI hardware\n");
		goto fail_free;
	}

	FUNC31(dev);
	FUNC32(dev, OHCI1394_PCI_HCI_Control, 0);
	FUNC30(dev, ohci);

	FUNC38(&ohci->lock);
	FUNC16(&ohci->phy_reg_mutex);

	FUNC2(&ohci->bus_reset_work, bus_reset_work);

	if (!(FUNC28(dev, 0) & IORESOURCE_MEM) ||
	    FUNC29(dev, 0) < OHCI1394_REGISTER_SIZE) {
		FUNC17(ohci, "invalid MMIO resource\n");
		err = -ENXIO;
		goto fail_disable;
	}

	err = FUNC27(dev, 0, ohci_driver_name);
	if (err) {
		FUNC17(ohci, "MMIO resource unavailable\n");
		goto fail_disable;
	}

	ohci->registers = FUNC24(dev, 0, OHCI1394_REGISTER_SIZE);
	if (ohci->registers == NULL) {
		FUNC17(ohci, "failed to remap registers\n");
		err = -ENXIO;
		goto fail_iomem;
	}

	for (i = 0; i < FUNC0(ohci_quirks); i++)
		if ((ohci_quirks[i].vendor == dev->vendor) &&
		    (ohci_quirks[i].device == (unsigned short)PCI_ANY_ID ||
		     ohci_quirks[i].device == dev->device) &&
		    (ohci_quirks[i].revision == (unsigned short)PCI_ANY_ID ||
		     ohci_quirks[i].revision >= dev->revision)) {
			ohci->quirks = ohci_quirks[i].flags;
			break;
		}
	if (param_quirks)
		ohci->quirks = param_quirks;

	/*
	 * Because dma_alloc_coherent() allocates at least one page,
	 * we save space by using a common buffer for the AR request/
	 * response descriptors and the self IDs buffer.
	 */
	FUNC1(AR_BUFFERS * sizeof(struct descriptor) > PAGE_SIZE/4);
	FUNC1(SELF_ID_BUF_SIZE > PAGE_SIZE/2);
	ohci->misc_buffer = FUNC8(ohci->card.device,
					       PAGE_SIZE,
					       &ohci->misc_buffer_bus,
					       GFP_KERNEL);
	if (!ohci->misc_buffer) {
		err = -ENOMEM;
		goto fail_iounmap;
	}

	err = FUNC3(&ohci->ar_request_ctx, ohci, 0,
			      OHCI1394_AsReqRcvContextControlSet);
	if (err < 0)
		goto fail_misc_buf;

	err = FUNC3(&ohci->ar_response_ctx, ohci, PAGE_SIZE/4,
			      OHCI1394_AsRspRcvContextControlSet);
	if (err < 0)
		goto fail_arreq_ctx;

	err = FUNC5(&ohci->at_request_ctx, ohci,
			   OHCI1394_AsReqTrContextControlSet, handle_at_packet);
	if (err < 0)
		goto fail_arrsp_ctx;

	err = FUNC5(&ohci->at_response_ctx, ohci,
			   OHCI1394_AsRspTrContextControlSet, handle_at_packet);
	if (err < 0)
		goto fail_atreq_ctx;

	FUNC36(ohci, OHCI1394_IsoRecvIntMaskSet, ~0);
	ohci->ir_context_channels = ~0ULL;
	ohci->ir_context_support = FUNC35(ohci, OHCI1394_IsoRecvIntMaskSet);
	FUNC36(ohci, OHCI1394_IsoRecvIntMaskClear, ~0);
	ohci->ir_context_mask = ohci->ir_context_support;
	ohci->n_ir = FUNC13(ohci->ir_context_mask);
	size = sizeof(struct iso_context) * ohci->n_ir;
	ohci->ir_context_list = FUNC15(size, GFP_KERNEL);

	FUNC36(ohci, OHCI1394_IsoXmitIntMaskSet, ~0);
	ohci->it_context_support = FUNC35(ohci, OHCI1394_IsoXmitIntMaskSet);
	/* JMicron JMB38x often shows 0 at first read, just ignore it */
	if (!ohci->it_context_support) {
		FUNC18(ohci, "overriding IsoXmitIntMask\n");
		ohci->it_context_support = 0xf;
	}
	FUNC36(ohci, OHCI1394_IsoXmitIntMaskClear, ~0);
	ohci->it_context_mask = ohci->it_context_support;
	ohci->n_it = FUNC13(ohci->it_context_mask);
	size = sizeof(struct iso_context) * ohci->n_it;
	ohci->it_context_list = FUNC15(size, GFP_KERNEL);

	if (ohci->it_context_list == NULL || ohci->ir_context_list == NULL) {
		err = -ENOMEM;
		goto fail_contexts;
	}

	ohci->self_id     = ohci->misc_buffer     + PAGE_SIZE/2;
	ohci->self_id_bus = ohci->misc_buffer_bus + PAGE_SIZE/2;

	bus_options = FUNC35(ohci, OHCI1394_BusOptions);
	max_receive = (bus_options >> 12) & 0xf;
	link_speed = bus_options & 0x7;
	guid = ((u64) FUNC35(ohci, OHCI1394_GUIDHi) << 32) |
		FUNC35(ohci, OHCI1394_GUIDLo);

	if (!(ohci->quirks & QUIRK_NO_MSI))
		FUNC23(dev);
	if (FUNC37(dev->irq, irq_handler,
			FUNC19(dev) ? 0 : IRQF_SHARED,
			ohci_driver_name, ohci)) {
		FUNC17(ohci, "failed to allocate interrupt %d\n", dev->irq);
		err = -EIO;
		goto fail_msi;
	}

	err = FUNC11(&ohci->card, max_receive, link_speed, guid);
	if (err)
		goto fail_irq;

	version = FUNC35(ohci, OHCI1394_Version) & 0x00ff00ff;
	FUNC18(ohci,
		    "added OHCI v%x.%x device as card %d, "
		    "%d IR + %d IT contexts, quirks 0x%x%s\n",
		    version >> 16, version & 0xff, ohci->card.index,
		    ohci->n_ir, ohci->n_it, ohci->quirks,
		    FUNC35(ohci, OHCI1394_PhyUpperBound) ?
			", physUB" : "");

	return 0;

 fail_irq:
	FUNC10(dev->irq, ohci);
 fail_msi:
	FUNC21(dev);
 fail_contexts:
	FUNC14(ohci->ir_context_list);
	FUNC14(ohci->it_context_list);
	FUNC6(&ohci->at_response_ctx);
 fail_atreq_ctx:
	FUNC6(&ohci->at_request_ctx);
 fail_arrsp_ctx:
	FUNC4(&ohci->ar_response_ctx);
 fail_arreq_ctx:
	FUNC4(&ohci->ar_request_ctx);
 fail_misc_buf:
	FUNC9(ohci->card.device, PAGE_SIZE,
			  ohci->misc_buffer, ohci->misc_buffer_bus);
 fail_iounmap:
	FUNC25(dev, ohci->registers);
 fail_iomem:
	FUNC26(dev, 0);
 fail_disable:
	FUNC20(dev);
 fail_free:
	FUNC14(ohci);
	FUNC33(dev);
 fail:
	return err;
}