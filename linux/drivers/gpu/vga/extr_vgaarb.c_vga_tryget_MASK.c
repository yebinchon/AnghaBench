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
struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct vga_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct pci_dev* FUNC4 () ; 
 int /*<<< orphan*/  vga_lock ; 
 struct vga_device* FUNC5 (struct pci_dev*) ; 

int FUNC6(struct pci_dev *pdev, unsigned int rsrc)
{
	struct vga_device *vgadev;
	unsigned long flags;
	int rc = 0;

	FUNC3();

	/* The one who calls us should check for this, but lets be sure... */
	if (pdev == NULL)
		pdev = FUNC4();
	if (pdev == NULL)
		return 0;
	FUNC1(&vga_lock, flags);
	vgadev = FUNC5(pdev);
	if (vgadev == NULL) {
		rc = -ENODEV;
		goto bail;
	}
	if (FUNC0(vgadev, rsrc))
		rc = -EBUSY;
bail:
	FUNC2(&vga_lock, flags);
	return rc;
}