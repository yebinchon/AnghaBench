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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct vga_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct vga_device* FUNC1 (struct vga_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct pci_dev* FUNC11 () ; 
 int /*<<< orphan*/  vga_lock ; 
 int /*<<< orphan*/  vga_wait_queue ; 
 struct vga_device* FUNC12 (struct pci_dev*) ; 

int FUNC13(struct pci_dev *pdev, unsigned int rsrc, int interruptible)
{
	struct vga_device *vgadev, *conflict;
	unsigned long flags;
	wait_queue_entry_t wait;
	int rc = 0;

	FUNC10();
	/* The one who calls us should check for this, but lets be sure... */
	if (pdev == NULL)
		pdev = FUNC11();
	if (pdev == NULL)
		return 0;

	for (;;) {
		FUNC8(&vga_lock, flags);
		vgadev = FUNC12(pdev);
		if (vgadev == NULL) {
			FUNC9(&vga_lock, flags);
			rc = -ENODEV;
			break;
		}
		conflict = FUNC1(vgadev, rsrc);
		FUNC9(&vga_lock, flags);
		if (conflict == NULL)
			break;


		/* We have a conflict, we wait until somebody kicks the
		 * work queue. Currently we have one work queue that we
		 * kick each time some resources are released, but it would
		 * be fairly easy to have a per device one so that we only
		 * need to attach to the conflicting device
		 */
		FUNC3(&wait, current);
		FUNC2(&vga_wait_queue, &wait);
		FUNC6(interruptible ?
				  TASK_INTERRUPTIBLE :
				  TASK_UNINTERRUPTIBLE);
		if (interruptible && FUNC7(current)) {
			FUNC0(TASK_RUNNING);
			FUNC4(&vga_wait_queue, &wait);
			rc = -ERESTARTSYS;
			break;
		}
		FUNC5();
		FUNC4(&vga_wait_queue, &wait);
	}
	return rc;
}