#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 unsigned long DNV_MCHBAR_SIZE ; 
 unsigned long DNV_SB_PORT_SIZE ; 
 int ENODEV ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int,void*) ; 

__attribute__((used)) static int FUNC8(int port, int off, int op, void *data, size_t sz, char *name)
{
	struct pci_dev *pdev;
	char *base;
	u64 addr;
	unsigned long size;

	if (op == 4) {
		pdev = FUNC6(PCI_VENDOR_ID_INTEL, 0x1980, NULL);
		if (!pdev)
			return -ENODEV;

		FUNC7(pdev, off, data);
		FUNC5(pdev);
	} else {
		/* MMIO via memory controller hub base address */
		if (op == 0 && port == 0x4c) {
			addr = FUNC1();
			if (!addr)
				return -ENODEV;
			size = DNV_MCHBAR_SIZE;
		} else {
			/* MMIO via sideband register base address */
			addr = FUNC2();
			if (!addr)
				return -ENODEV;
			addr += (port << 16);
			size = DNV_SB_PORT_SIZE;
		}

		base = FUNC3((resource_size_t)addr, size);
		if (!base)
			return -ENODEV;

		if (sz == 8)
			*(u32 *)(data + 4) = *(u32 *)(base + off + 4);
		*(u32 *)data = *(u32 *)(base + off);

		FUNC4(base);
	}

	FUNC0(2, "Read %s=%.8x_%.8x\n", name,
			(sz == 8) ? *(u32 *)(data + 4) : 0, *(u32 *)data);

	return 0;
}