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
typedef  int u8 ;
typedef  int u32 ;
struct via_isa_bridge {scalar_t__ udma_mask; int flags; } ;
struct via82cxxx_dev {struct via_isa_bridge* via_config; } ;
struct pci_dev {int dummy; } ;
struct ide_host {struct via82cxxx_dev* host_priv; } ;

/* Variables and functions */
 scalar_t__ ATA_UDMA4 ; 
 int VIA_BAD_CLK66 ; 
 int VIA_BAD_PREQ ; 
 int /*<<< orphan*/  VIA_FIFO_CONFIG ; 
 int /*<<< orphan*/  VIA_IDE_ENABLE ; 
 int VIA_SET_FIFO ; 
 int /*<<< orphan*/  VIA_UDMA_TIMING ; 
 struct ide_host* FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct via82cxxx_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev)
{
	struct ide_host *host = FUNC0(dev);
	struct via82cxxx_dev *vdev = host->host_priv;
	struct via_isa_bridge *via_config = vdev->via_config;
	u8 t, v;
	u32 u;

	/*
	 * Detect cable and configure Clk66
	 */
	FUNC2(dev, VIA_UDMA_TIMING, &u);

	FUNC5(vdev, u);

	if (via_config->udma_mask == ATA_UDMA4) {
		/* Enable Clk66 */
		FUNC4(dev, VIA_UDMA_TIMING, u|0x80008);
	} else if (via_config->flags & VIA_BAD_CLK66) {
		/* Would cause trouble on 596a and 686 */
		FUNC4(dev, VIA_UDMA_TIMING, u & ~0x80008);
	}

	/*
	 * Check whether interfaces are enabled.
	 */

	FUNC1(dev, VIA_IDE_ENABLE, &v);

	/*
	 * Set up FIFO sizes and thresholds.
	 */

	FUNC1(dev, VIA_FIFO_CONFIG, &t);

	/* Disable PREQ# till DDACK# */
	if (via_config->flags & VIA_BAD_PREQ) {
		/* Would crash on 586b rev 41 */
		t &= 0x7f;
	}

	/* Fix FIFO split between channels */
	if (via_config->flags & VIA_SET_FIFO) {
		t &= (t & 0x9f);
		switch (v & 3) {
			case 2: t |= 0x00; break;	/* 16 on primary */
			case 1: t |= 0x60; break;	/* 16 on secondary */
			case 3: t |= 0x20; break;	/* 8 pri 8 sec */
		}
	}

	FUNC3(dev, VIA_FIFO_CONFIG, t);

	return 0;
}