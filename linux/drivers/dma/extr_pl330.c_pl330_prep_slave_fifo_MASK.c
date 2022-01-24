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
struct TYPE_4__ {TYPE_1__* device; } ;
struct dma_pl330_chan {int dir; int burst_sz; int /*<<< orphan*/  fifo_dma; int /*<<< orphan*/  fifo_addr; TYPE_2__ chan; } ;
struct device {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_pl330_chan*) ; 

__attribute__((used)) static bool FUNC4(struct dma_pl330_chan *pch,
				  enum dma_transfer_direction dir)
{
	struct device *dev = pch->chan.device->dev;
	enum dma_data_direction dma_dir = FUNC2(dir);

	/* Already mapped for this config? */
	if (pch->dir == dma_dir)
		return true;

	FUNC3(pch);
	pch->fifo_dma = FUNC0(dev, pch->fifo_addr,
					 1 << pch->burst_sz, dma_dir, 0);
	if (FUNC1(dev, pch->fifo_dma))
		return false;

	pch->dir = dma_dir;
	return true;
}