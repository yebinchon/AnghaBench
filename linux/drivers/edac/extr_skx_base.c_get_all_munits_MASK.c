#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct skx_dev {int /*<<< orphan*/  mcroute; struct pci_dev* util_all; struct pci_dev* sad_all; TYPE_2__* imc; } ;
struct pci_dev {scalar_t__ devfn; int /*<<< orphan*/  bus; } ;
struct munit {int per_socket; scalar_t__* devfn; int mtype; int /*<<< orphan*/  did; int /*<<< orphan*/  busidx; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {struct pci_dev* cdev; } ;

/* Variables and functions */
#define  CHAN0 133 
#define  CHAN1 132 
#define  CHAN2 131 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
#define  SAD 130 
#define  SAD_ALL 129 
 int SKX_NUM_IMC ; 
#define  UTIL_ALL 128 
 struct skx_dev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(const struct munit *m)
{
	struct pci_dev *pdev, *prev;
	struct skx_dev *d;
	u32 reg;
	int i = 0, ndev = 0;

	prev = NULL;
	for (;;) {
		pdev = FUNC4(PCI_VENDOR_ID_INTEL, m->did, prev);
		if (!pdev)
			break;
		ndev++;
		if (m->per_socket == SKX_NUM_IMC) {
			for (i = 0; i < SKX_NUM_IMC; i++)
				if (m->devfn[i] == pdev->devfn)
					break;
			if (i == SKX_NUM_IMC)
				goto fail;
		}
		d = FUNC0(pdev->bus, m->busidx);
		if (!d)
			goto fail;

		/* Be sure that the device is enabled */
		if (FUNC7(FUNC3(pdev) < 0)) {
			FUNC6(KERN_ERR, "Couldn't enable device %04x:%04x\n",
				   PCI_VENDOR_ID_INTEL, m->did);
			goto fail;
		}

		switch (m->mtype) {
		case CHAN0: case CHAN1: case CHAN2:
			FUNC1(pdev);
			d->imc[i].chan[m->mtype].cdev = pdev;
			break;
		case SAD_ALL:
			FUNC1(pdev);
			d->sad_all = pdev;
			break;
		case UTIL_ALL:
			FUNC1(pdev);
			d->util_all = pdev;
			break;
		case SAD:
			/*
			 * one of these devices per core, including cores
			 * that don't exist on this SKU. Ignore any that
			 * read a route table of zero, make sure all the
			 * non-zero values match.
			 */
			FUNC5(pdev, 0xB4, &reg);
			if (reg != 0) {
				if (d->mcroute == 0) {
					d->mcroute = reg;
				} else if (d->mcroute != reg) {
					FUNC6(KERN_ERR, "mcroute mismatch\n");
					goto fail;
				}
			}
			ndev--;
			break;
		}

		prev = pdev;
	}

	return ndev;
fail:
	FUNC2(pdev);
	return -ENODEV;
}