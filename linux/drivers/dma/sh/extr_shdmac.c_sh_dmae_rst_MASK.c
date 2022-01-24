#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ dma_dev; } ;
struct sh_dmae_device {TYPE_3__* pdata; TYPE_2__ shdma_dev; struct sh_dmae_chan** chan; } ;
struct sh_dmae_chan {int dummy; } ;
struct TYPE_6__ {int channel_num; unsigned short dmaor_init; scalar_t__ chclr_present; } ;

/* Variables and functions */
 unsigned short DMAOR_AE ; 
 unsigned short DMAOR_DME ; 
 unsigned short DMAOR_NMIF ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct sh_dmae_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned short FUNC2 (struct sh_dmae_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_dmae_device*,unsigned short) ; 
 int /*<<< orphan*/  sh_dmae_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct sh_dmae_device *shdev)
{
	unsigned short dmaor;
	unsigned long flags;

	FUNC4(&sh_dmae_lock, flags);

	dmaor = FUNC2(shdev) & ~(DMAOR_NMIF | DMAOR_AE | DMAOR_DME);

	if (shdev->pdata->chclr_present) {
		int i;
		for (i = 0; i < shdev->pdata->channel_num; i++) {
			struct sh_dmae_chan *sh_chan = shdev->chan[i];
			if (sh_chan)
				FUNC0(sh_chan);
		}
	}

	FUNC3(shdev, dmaor | shdev->pdata->dmaor_init);

	dmaor = FUNC2(shdev);

	FUNC5(&sh_dmae_lock, flags);

	if (dmaor & (DMAOR_AE | DMAOR_NMIF)) {
		FUNC1(shdev->shdma_dev.dma_dev.dev, "Can't initialize DMAOR.\n");
		return -EIO;
	}
	if (shdev->pdata->dmaor_init & ~dmaor)
		FUNC1(shdev->shdma_dev.dma_dev.dev,
			 "DMAOR=0x%x hasn't latched the initial value 0x%x.\n",
			 dmaor, shdev->pdata->dmaor_init);
	return 0;
}