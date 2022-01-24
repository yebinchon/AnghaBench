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
struct nitrox_vfdev {int vfno; } ;
struct TYPE_2__ {int num_vfs; struct nitrox_vfdev* vfdev; int /*<<< orphan*/  pf2vf_wq; } ;
struct nitrox_device {TYPE_1__ iov; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nitrox_device*) ; 
 struct nitrox_vfdev* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nitrox_vfdev*) ; 

int FUNC4(struct nitrox_device *ndev)
{
	struct nitrox_vfdev *vfdev;
	int i;

	ndev->iov.vfdev = FUNC2(ndev->iov.num_vfs,
				  sizeof(struct nitrox_vfdev), GFP_KERNEL);
	if (!ndev->iov.vfdev)
		return -ENOMEM;

	for (i = 0; i < ndev->iov.num_vfs; i++) {
		vfdev = ndev->iov.vfdev + i;
		vfdev->vfno = i;
	}

	/* allocate pf2vf response workqueue */
	ndev->iov.pf2vf_wq = FUNC0("nitrox_pf2vf", 0, 0);
	if (!ndev->iov.pf2vf_wq) {
		FUNC3(ndev->iov.vfdev);
		return -ENOMEM;
	}
	/* enable pf2vf mailbox interrupts */
	FUNC1(ndev);

	return 0;
}