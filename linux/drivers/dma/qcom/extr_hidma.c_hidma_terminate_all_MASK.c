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
struct hidma_chan {TYPE_1__ chan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct hidma_chan* FUNC5 (struct dma_chan*) ; 
 struct hidma_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dma_chan *chan)
{
	struct hidma_chan *mchan = FUNC5(chan);
	struct hidma_dev *dmadev = FUNC6(mchan->chan.device);
	int rc;

	rc = FUNC1(chan);
	if (rc)
		return rc;

	/* reinitialize the hardware */
	FUNC2(dmadev->ddev.dev);
	rc = FUNC0(dmadev->lldev);
	FUNC3(dmadev->ddev.dev);
	FUNC4(dmadev->ddev.dev);
	return rc;
}