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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  broken_parity_status; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDAC_PCI ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 int PCI_HEADER_TYPE_BRIDGE ; 
 int PCI_STATUS_DETECTED_PARITY ; 
 int PCI_STATUS_PARITY ; 
 int PCI_STATUS_SIG_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_nonparity_count ; 
 int /*<<< orphan*/  pci_parity_count ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *dev)
{
	unsigned long flags;
	u16 status;
	u8 header_type;

	/* stop any interrupts until we can acquire the status */
	FUNC6(flags);

	/* read the STATUS register on this device */
	status = FUNC4(dev, 0);

	/* read the device TYPE, looking for bridges */
	FUNC8(dev, PCI_HEADER_TYPE, &header_type);

	FUNC5(flags);

	FUNC2(4, "PCI STATUS= 0x%04x %s\n", status, FUNC1(&dev->dev));

	/* check the status reg for errors on boards NOT marked as broken
	 * if broken, we cannot trust any of the status bits
	 */
	if (status && !dev->broken_parity_status) {
		if (status & (PCI_STATUS_SIG_SYSTEM_ERROR)) {
			FUNC3(KERN_CRIT, EDAC_PCI,
				"Signaled System Error on %s\n",
				FUNC7(dev));
			FUNC0(&pci_nonparity_count);
		}

		if (status & (PCI_STATUS_PARITY)) {
			FUNC3(KERN_CRIT, EDAC_PCI,
				"Master Data Parity Error on %s\n",
				FUNC7(dev));

			FUNC0(&pci_parity_count);
		}

		if (status & (PCI_STATUS_DETECTED_PARITY)) {
			FUNC3(KERN_CRIT, EDAC_PCI,
				"Detected Parity Error on %s\n",
				FUNC7(dev));

			FUNC0(&pci_parity_count);
		}
	}


	FUNC2(4, "PCI HEADER TYPE= 0x%02x %s\n",
		 header_type, FUNC1(&dev->dev));

	if ((header_type & 0x7F) == PCI_HEADER_TYPE_BRIDGE) {
		/* On bridges, need to examine secondary status register  */
		status = FUNC4(dev, 1);

		FUNC2(4, "PCI SEC_STATUS= 0x%04x %s\n",
			 status, FUNC1(&dev->dev));

		/* check the secondary status reg for errors,
		 * on NOT broken boards
		 */
		if (status && !dev->broken_parity_status) {
			if (status & (PCI_STATUS_SIG_SYSTEM_ERROR)) {
				FUNC3(KERN_CRIT, EDAC_PCI, "Bridge "
					"Signaled System Error on %s\n",
					FUNC7(dev));
				FUNC0(&pci_nonparity_count);
			}

			if (status & (PCI_STATUS_PARITY)) {
				FUNC3(KERN_CRIT, EDAC_PCI, "Bridge "
					"Master Data Parity Error on "
					"%s\n", FUNC7(dev));

				FUNC0(&pci_parity_count);
			}

			if (status & (PCI_STATUS_DETECTED_PARITY)) {
				FUNC3(KERN_CRIT, EDAC_PCI, "Bridge "
					"Detected Parity Error on %s\n",
					FUNC7(dev));

				FUNC0(&pci_parity_count);
			}
		}
	}
}