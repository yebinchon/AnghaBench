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
struct mic_dma_chan {int /*<<< orphan*/ * status_dest; int /*<<< orphan*/  status_dest_micpa; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct mic_dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct mic_dma_chan *ch)
{
	struct device *dev = &FUNC4(ch)->dev;

	ch->status_dest = FUNC3(L1_CACHE_BYTES, GFP_KERNEL);
	if (!ch->status_dest)
		return -ENOMEM;
	ch->status_dest_micpa = FUNC0(dev, ch->status_dest,
					L1_CACHE_BYTES, DMA_BIDIRECTIONAL);
	if (FUNC1(dev, ch->status_dest_micpa)) {
		FUNC2(ch->status_dest);
		ch->status_dest = NULL;
		return -ENOMEM;
	}
	return 0;
}