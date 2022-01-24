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
struct xgene_dma_desc_sw {int dummy; } ;
struct xgene_dma_chan {scalar_t__ desc_pool; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_dma_chan*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_chan*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgene_dma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *dchan)
{
	struct xgene_dma_chan *chan = FUNC3(dchan);

	/* Has this channel already been allocated? */
	if (chan->desc_pool)
		return 1;

	chan->desc_pool = FUNC2(chan->name, chan->dev,
					  sizeof(struct xgene_dma_desc_sw),
					  0, 0);
	if (!chan->desc_pool) {
		FUNC1(chan, "Failed to allocate descriptor pool\n");
		return -ENOMEM;
	}

	FUNC0(chan, "Allocate descriptor pool\n");

	return 1;
}