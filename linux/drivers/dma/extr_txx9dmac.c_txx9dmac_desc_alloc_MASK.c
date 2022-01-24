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
struct txx9dmac_dev {int /*<<< orphan*/  descsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_submit; } ;
struct txx9dmac_desc {int /*<<< orphan*/  hwdesc; TYPE_1__ txd; int /*<<< orphan*/  tx_list; } ;
struct txx9dmac_chan {int /*<<< orphan*/  chan; struct txx9dmac_dev* ddev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct txx9dmac_desc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txx9dmac_tx_submit ; 

__attribute__((used)) static struct txx9dmac_desc *FUNC5(struct txx9dmac_chan *dc,
						 gfp_t flags)
{
	struct txx9dmac_dev *ddev = dc->ddev;
	struct txx9dmac_desc *desc;

	desc = FUNC4(sizeof(*desc), flags);
	if (!desc)
		return NULL;
	FUNC0(&desc->tx_list);
	FUNC2(&desc->txd, &dc->chan);
	desc->txd.tx_submit = txx9dmac_tx_submit;
	/* txd.flags will be overwritten in prep funcs */
	desc->txd.flags = DMA_CTRL_ACK;
	desc->txd.phys = FUNC3(FUNC1(&dc->chan), &desc->hwdesc,
					ddev->descsize, DMA_TO_DEVICE);
	return desc;
}