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
struct rackmeter {int /*<<< orphan*/  dma_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 struct rackmeter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rackmeter*) ; 

__attribute__((used)) static int FUNC3(struct macio_dev* mdev)
{
	struct rackmeter *rm = FUNC1(&mdev->ofdev.dev);

	if (rm == NULL)
		return -ENODEV;

	/* Stop CPU sniffer timer & work queues */
	FUNC2(rm);

	/* Stop/reset dbdma */
	FUNC0(rm->dma_regs);

	return 0;
}