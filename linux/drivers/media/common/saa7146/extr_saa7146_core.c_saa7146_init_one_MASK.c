#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct saa7146_pci_extension_data {struct saa7146_extension* ext; } ;
struct saa7146_extension {scalar_t__ (* attach ) (struct saa7146_dev*,struct saa7146_pci_extension_data*) ;scalar_t__ (* probe ) (struct saa7146_dev*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  dma_handle; void* cpu_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_handle; void* cpu_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma_handle; void* cpu_addr; } ;
struct saa7146_dev {int /*<<< orphan*/  mem; TYPE_3__ d_rps0; TYPE_2__ d_rps1; TYPE_1__ d_i2c; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  i2c_wq; int /*<<< orphan*/  module; int /*<<< orphan*/  i2c_lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  int_slock; int /*<<< orphan*/  v4l2_lock; struct saa7146_extension* ext; int /*<<< orphan*/  revision; int /*<<< orphan*/  name; struct pci_dev* pci; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pci_dev*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  PCI_BT_V1 ; 
 int /*<<< orphan*/  SAA7146_RPS_MEM ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interrupt_hw ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*) ; 
 struct saa7146_dev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 void* FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct saa7146_dev*) ; 
 int saa7146_num ; 
 int /*<<< orphan*/  FUNC22 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC25 (struct saa7146_dev*) ; 
 scalar_t__ FUNC26 (struct saa7146_dev*,struct saa7146_pci_extension_data*) ; 

__attribute__((used)) static int FUNC27(struct pci_dev *pci, const struct pci_device_id *ent)
{
	struct saa7146_pci_extension_data *pci_ext = (struct saa7146_pci_extension_data *)ent->driver_data;
	struct saa7146_extension *ext = pci_ext->ext;
	struct saa7146_dev *dev;
	int err = -ENOMEM;

	/* clear out mem for sure */
	dev = FUNC8(sizeof(struct saa7146_dev), GFP_KERNEL);
	if (!dev) {
		FUNC2("out of memory\n");
		goto out;
	}

	/* create a nice device name */
	FUNC24(dev->name, "saa7146 (%d)", saa7146_num);

	FUNC1("pci:%p\n", pci);

	err = FUNC11(pci);
	if (err < 0) {
		FUNC2("pci_enable_device() failed\n");
		goto err_free;
	}

	/* enable bus-mastering */
	FUNC18(pci);

	dev->pci = pci;

	/* get chip-revision; this is needed to enable bug-fixes */
	dev->revision = pci->revision;

	/* remap the memory from virtual to physical address */

	err = FUNC14(pci, 0, "saa7146");
	if (err < 0)
		goto err_disable;

	dev->mem = FUNC5(FUNC16(pci, 0),
			   FUNC15(pci, 0));
	if (!dev->mem) {
		FUNC2("ioremap() failed\n");
		err = -ENODEV;
		goto err_release;
	}

	/* we don't do a master reset here anymore, it screws up
	   some boards that don't have an i2c-eeprom for configuration
	   values */
/*
	saa7146_write(dev, MC1, MASK_31);
*/

	/* disable all irqs */
	FUNC22(dev, IER, 0);

	/* shut down all dma transfers and rps tasks */
	FUNC22(dev, MC1, 0x30ff0000);

	/* clear out any rps-signals pending */
	FUNC22(dev, MC2, 0xf8000000);

	/* request an interrupt for the saa7146 */
	err = FUNC21(pci->irq, interrupt_hw, IRQF_SHARED,
			  dev->name, dev);
	if (err < 0) {
		FUNC2("request_irq() failed\n");
		goto err_unmap;
	}

	err = -ENOMEM;

	/* get memory for various stuff */
	dev->d_rps0.cpu_addr = FUNC19(pci, SAA7146_RPS_MEM,
						     &dev->d_rps0.dma_handle);
	if (!dev->d_rps0.cpu_addr)
		goto err_free_irq;

	dev->d_rps1.cpu_addr = FUNC19(pci, SAA7146_RPS_MEM,
						     &dev->d_rps1.dma_handle);
	if (!dev->d_rps1.cpu_addr)
		goto err_free_rps0;

	dev->d_i2c.cpu_addr = FUNC19(pci, SAA7146_RPS_MEM,
						    &dev->d_i2c.dma_handle);
	if (!dev->d_i2c.cpu_addr)
		goto err_free_rps1;

	/* the rest + print status message */

	FUNC20("found saa7146 @ mem %p (revision %d, irq %d) (0x%04x,0x%04x)\n",
		dev->mem, dev->revision, pci->irq,
		pci->subsystem_vendor, pci->subsystem_device);
	dev->ext = ext;

	FUNC9(&dev->v4l2_lock);
	FUNC23(&dev->int_slock);
	FUNC23(&dev->slock);

	FUNC9(&dev->i2c_lock);

	dev->module = THIS_MODULE;
	FUNC4(&dev->i2c_wq);

	/* set some sane pci arbitrition values */
	FUNC22(dev, PCI_BT_V1, 0x1c00101f);

	/* TODO: use the status code of the callback */

	err = -ENODEV;

	if (ext->probe && ext->probe(dev)) {
		FUNC0("ext->probe() failed for %p. skipping device.\n", dev);
		goto err_free_i2c;
	}

	if (ext->attach(dev, pci_ext)) {
		FUNC0("ext->attach() failed for %p. skipping device.\n", dev);
		goto err_free_i2c;
	}
	/* V4L extensions will set the pci drvdata to the v4l2_device in the
	   attach() above. So for those cards that do not use V4L we have to
	   set it explicitly. */
	FUNC17(pci, &dev->v4l2_dev);

	saa7146_num++;

	err = 0;
out:
	return err;

err_free_i2c:
	FUNC12(pci, SAA7146_RPS_MEM, dev->d_i2c.cpu_addr,
			    dev->d_i2c.dma_handle);
err_free_rps1:
	FUNC12(pci, SAA7146_RPS_MEM, dev->d_rps1.cpu_addr,
			    dev->d_rps1.dma_handle);
err_free_rps0:
	FUNC12(pci, SAA7146_RPS_MEM, dev->d_rps0.cpu_addr,
			    dev->d_rps0.dma_handle);
err_free_irq:
	FUNC3(pci->irq, (void *)dev);
err_unmap:
	FUNC6(dev->mem);
err_release:
	FUNC13(pci, 0);
err_disable:
	FUNC10(pci);
err_free:
	FUNC7(dev);
	goto out;
}