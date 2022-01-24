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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct hidma_dev {TYPE_2__ ddev; int /*<<< orphan*/  lldev; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct hidma_chan {int paused; TYPE_1__ chan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hidma_chan* FUNC5 (struct dma_chan*) ; 
 struct hidma_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct hidma_chan *mchan;
	struct hidma_dev *dmadev;
	int rc = 0;

	mchan = FUNC5(chan);
	dmadev = FUNC6(mchan->chan.device);
	if (mchan->paused) {
		FUNC2(dmadev->ddev.dev);
		rc = FUNC1(dmadev->lldev);
		if (!rc)
			mchan->paused = false;
		else
			FUNC0(dmadev->ddev.dev,
				"failed to resume the channel");
		FUNC3(dmadev->ddev.dev);
		FUNC4(dmadev->ddev.dev);
	}
	return rc;
}