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
struct sun4i_dma_promise {size_t len; int cfg; void* dst; void* src; } ;
struct dma_slave_config {int /*<<< orphan*/  dst_addr_width; int /*<<< orphan*/  src_addr_width; int /*<<< orphan*/  dst_maxburst; int /*<<< orphan*/  src_maxburst; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int SUN4I_DMA_CFG_LOADING ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int SUN4I_NDMA_CFG_BYTE_COUNT_MODE_REMAIN ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sun4i_dma_promise*) ; 
 struct sun4i_dma_promise* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dma_slave_config*,int) ; 

__attribute__((used)) static struct sun4i_dma_promise *
FUNC11(struct dma_chan *chan, dma_addr_t src, dma_addr_t dest,
		      size_t len, struct dma_slave_config *sconfig,
		      enum dma_transfer_direction direction)
{
	struct sun4i_dma_promise *promise;
	int ret;

	ret = FUNC10(sconfig, direction);
	if (ret)
		return NULL;

	promise = FUNC9(sizeof(*promise), GFP_NOWAIT);
	if (!promise)
		return NULL;

	promise->src = src;
	promise->dst = dest;
	promise->len = len;
	promise->cfg = SUN4I_DMA_CFG_LOADING |
		SUN4I_NDMA_CFG_BYTE_COUNT_MODE_REMAIN;

	FUNC7(FUNC4(chan),
		"src burst %d, dst burst %d, src buswidth %d, dst buswidth %d",
		sconfig->src_maxburst, sconfig->dst_maxburst,
		sconfig->src_addr_width, sconfig->dst_addr_width);

	/* Source burst */
	ret = FUNC5(sconfig->src_maxburst);
	if (ret < 0)
		goto fail;
	promise->cfg |= FUNC2(ret);

	/* Destination burst */
	ret = FUNC5(sconfig->dst_maxburst);
	if (ret < 0)
		goto fail;
	promise->cfg |= FUNC0(ret);

	/* Source bus width */
	ret = FUNC6(sconfig->src_addr_width);
	if (ret < 0)
		goto fail;
	promise->cfg |= FUNC3(ret);

	/* Destination bus width */
	ret = FUNC6(sconfig->dst_addr_width);
	if (ret < 0)
		goto fail;
	promise->cfg |= FUNC1(ret);

	return promise;

fail:
	FUNC8(promise);
	return NULL;
}