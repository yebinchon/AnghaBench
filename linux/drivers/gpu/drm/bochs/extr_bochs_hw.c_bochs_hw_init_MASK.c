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
typedef  int u16 ;
struct pci_dev {int revision; TYPE_1__* resource; } ;
struct drm_device {struct pci_dev* pdev; struct bochs_device* dev_private; } ;
struct bochs_device {int ioports; unsigned long fb_base; unsigned long fb_size; int qext_size; int /*<<< orphan*/ * mmio; int /*<<< orphan*/ * fb_map; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IORESOURCE_MEM ; 
 int VBE_DISPI_ID0 ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_ID ; 
 int /*<<< orphan*/  VBE_DISPI_INDEX_VIDEO_MEMORY_64K ; 
 unsigned long VBE_DISPI_IOPORT_INDEX ; 
 int FUNC3 (struct bochs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bochs_device*) ; 
 void* FUNC5 (unsigned long,unsigned long) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int,char*) ; 
 unsigned long FUNC8 (struct pci_dev*,int) ; 
 unsigned long FUNC9 (struct pci_dev*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned long,char*) ; 

int FUNC12(struct drm_device *dev)
{
	struct bochs_device *bochs = dev->dev_private;
	struct pci_dev *pdev = dev->pdev;
	unsigned long addr, size, mem, ioaddr, iosize;
	u16 id;

	if (pdev->resource[2].flags & IORESOURCE_MEM) {
		/* mmio bar with vga and bochs registers present */
		if (FUNC7(pdev, 2, "bochs-drm") != 0) {
			FUNC1("Cannot request mmio region\n");
			return -EBUSY;
		}
		ioaddr = FUNC9(pdev, 2);
		iosize = FUNC8(pdev, 2);
		bochs->mmio = FUNC5(ioaddr, iosize);
		if (bochs->mmio == NULL) {
			FUNC1("Cannot map mmio region\n");
			return -ENOMEM;
		}
	} else {
		ioaddr = VBE_DISPI_IOPORT_INDEX;
		iosize = 2;
		if (!FUNC11(ioaddr, iosize, "bochs-drm")) {
			FUNC1("Cannot request ioports\n");
			return -EBUSY;
		}
		bochs->ioports = 1;
	}

	id = FUNC3(bochs, VBE_DISPI_INDEX_ID);
	mem = FUNC3(bochs, VBE_DISPI_INDEX_VIDEO_MEMORY_64K)
		* 64 * 1024;
	if ((id & 0xfff0) != VBE_DISPI_ID0) {
		FUNC1("ID mismatch\n");
		return -ENODEV;
	}

	if ((pdev->resource[0].flags & IORESOURCE_MEM) == 0)
		return -ENODEV;
	addr = FUNC9(pdev, 0);
	size = FUNC8(pdev, 0);
	if (addr == 0)
		return -ENODEV;
	if (size != mem) {
		FUNC1("Size mismatch: pci=%ld, bochs=%ld\n",
			size, mem);
		size = FUNC6(size, mem);
	}

	if (FUNC7(pdev, 0, "bochs-drm") != 0) {
		FUNC1("Cannot request framebuffer\n");
		return -EBUSY;
	}

	bochs->fb_map = FUNC5(addr, size);
	if (bochs->fb_map == NULL) {
		FUNC1("Cannot map framebuffer\n");
		return -ENOMEM;
	}
	bochs->fb_base = addr;
	bochs->fb_size = size;

	FUNC2("Found bochs VGA, ID 0x%x.\n", id);
	FUNC2("Framebuffer size %ld kB @ 0x%lx, %s @ 0x%lx.\n",
		 size / 1024, addr,
		 bochs->ioports ? "ioports" : "mmio",
		 ioaddr);

	if (bochs->mmio && pdev->revision >= 2) {
		bochs->qext_size = FUNC10(bochs->mmio + 0x600);
		if (bochs->qext_size < 4 || bochs->qext_size > iosize) {
			bochs->qext_size = 0;
			goto noext;
		}
		FUNC0("Found qemu ext regs, size %ld\n",
			  bochs->qext_size);
		FUNC4(bochs);
	}

noext:
	return 0;
}