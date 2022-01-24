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
struct vbox_private {int /*<<< orphan*/  ddev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vbox_private* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct vbox_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct vbox_private*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct vbox_private *vbox = FUNC2(pdev);

	FUNC1(&vbox->ddev);
	FUNC3(vbox);
	FUNC5(vbox);
	FUNC7(vbox);
	FUNC6(vbox);
	FUNC4(vbox);
	FUNC0(&vbox->ddev);
}