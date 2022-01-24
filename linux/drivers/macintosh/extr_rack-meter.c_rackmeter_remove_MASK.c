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
struct rackmeter_dma {int dummy; } ;
struct rackmeter {scalar_t__ ubuf; int /*<<< orphan*/  dma_buf_p; int /*<<< orphan*/  dma_buf_v; int /*<<< orphan*/  i2s_regs; int /*<<< orphan*/  dma_regs; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rackmeter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rackmeter*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rackmeter*) ; 
 TYPE_2__* FUNC8 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rackmeter*) ; 

__attribute__((used)) static int FUNC11(struct macio_dev* mdev)
{
	struct rackmeter *rm = FUNC1(&mdev->ofdev.dev);

	/* Stop CPU sniffer timer & work queues */
	FUNC10(rm);

	/* Clear reference to private data */
	FUNC2(&mdev->ofdev.dev, NULL);

	/* Stop/reset dbdma */
	FUNC0(rm->dma_regs);

	/* Release the IRQ */
	FUNC4(rm->irq, rm);

	/* Unmap registers */
	FUNC6(rm->dma_regs);
	FUNC6(rm->i2s_regs);

	/* Free DMA */
	FUNC3(&FUNC8(mdev)->dev,
			  sizeof(struct rackmeter_dma),
			  rm->dma_buf_v, rm->dma_buf_p);

	/* Free samples */
	FUNC5((unsigned long)rm->ubuf);

#if 0
	/* Release resources */
	macio_release_resources(mdev);
#endif

	/* Get rid of me */
	FUNC7(rm);

	return 0;
}