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
struct virt_dma_chan {int dummy; } ;
struct uniphier_mdmac_desc {unsigned int sg_len; int dir; int /*<<< orphan*/  vd; struct scatterlist* sgl; } ;
struct scatterlist {int dummy; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct uniphier_mdmac_desc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct virt_dma_chan* FUNC2 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct virt_dma_chan*,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC4(struct dma_chan *chan, struct scatterlist *sgl,
			     unsigned int sg_len,
			     enum dma_transfer_direction direction,
			     unsigned long flags, void *context)
{
	struct virt_dma_chan *vc = FUNC2(chan);
	struct uniphier_mdmac_desc *md;

	if (!FUNC0(direction))
		return NULL;

	md = FUNC1(sizeof(*md), GFP_NOWAIT);
	if (!md)
		return NULL;

	md->sgl = sgl;
	md->sg_len = sg_len;
	md->dir = direction;

	return FUNC3(vc, &md->vd, flags);
}