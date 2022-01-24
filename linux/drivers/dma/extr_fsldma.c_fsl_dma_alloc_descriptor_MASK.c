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
struct fsldma_chan {int /*<<< orphan*/  common; int /*<<< orphan*/  desc_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  tx_submit; } ;
struct fsl_desc_sw {TYPE_1__ async_tx; int /*<<< orphan*/  tx_list; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_chan*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct fsl_desc_sw* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsl_dma_tx_submit ; 

__attribute__((used)) static struct fsl_desc_sw *FUNC4(struct fsldma_chan *chan)
{
	struct fsl_desc_sw *desc;
	dma_addr_t pdesc;

	desc = FUNC3(chan->desc_pool, GFP_ATOMIC, &pdesc);
	if (!desc) {
		FUNC1(chan, "out of memory for link descriptor\n");
		return NULL;
	}

	FUNC0(&desc->tx_list);
	FUNC2(&desc->async_tx, &chan->common);
	desc->async_tx.tx_submit = fsl_dma_tx_submit;
	desc->async_tx.phys = pdesc;

	FUNC1(chan, "LD %p allocated\n", desc);

	return desc;
}