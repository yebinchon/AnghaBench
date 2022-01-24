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
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct axi_dmac_desc {int cyclic; int /*<<< orphan*/  vdesc; int /*<<< orphan*/  sg; } ;
struct axi_dmac_chan {int direction; int /*<<< orphan*/  vchan; int /*<<< orphan*/  max_length; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 struct axi_dmac_desc* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct axi_dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct axi_dmac_chan*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct axi_dmac_chan*,int,int /*<<< orphan*/ ,unsigned int,size_t,int /*<<< orphan*/ ) ; 
 struct axi_dmac_chan* FUNC5 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC7(
	struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
	size_t period_len, enum dma_transfer_direction direction,
	unsigned long flags)
{
	struct axi_dmac_chan *chan = FUNC5(c);
	struct axi_dmac_desc *desc;
	unsigned int num_periods, num_segments;

	if (direction != chan->direction)
		return NULL;

	if (!FUNC3(chan, buf_len) ||
	    !FUNC2(chan, buf_addr))
		return NULL;

	if (period_len == 0 || buf_len % period_len)
		return NULL;

	num_periods = buf_len / period_len;
	num_segments = FUNC0(period_len, chan->max_length);

	desc = FUNC1(num_periods * num_segments);
	if (!desc)
		return NULL;

	FUNC4(chan, direction, buf_addr, num_periods,
		period_len, desc->sg);

	desc->cyclic = true;

	return FUNC6(&chan->vchan, &desc->vdesc, flags);
}