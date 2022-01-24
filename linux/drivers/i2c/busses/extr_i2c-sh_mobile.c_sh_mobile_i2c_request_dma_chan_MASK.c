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
struct dma_slave_config {int direction; void* src_addr_width; void* src_addr; void* dst_addr_width; void* dst_addr; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  void* dma_addr_t ;
typedef  int /*<<< orphan*/  cfg ;

/* Variables and functions */
 int DMA_MEM_TO_DEV ; 
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 struct dma_chan* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 struct dma_chan* FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct dma_chan*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dma_chan *FUNC8(struct device *dev,
				enum dma_transfer_direction dir, dma_addr_t port_addr)
{
	struct dma_chan *chan;
	struct dma_slave_config cfg;
	char *chan_name = dir == DMA_MEM_TO_DEV ? "tx" : "rx";
	int ret;

	chan = FUNC5(dev, chan_name);
	if (FUNC1(chan)) {
		FUNC3(dev, "request_channel failed for %s (%ld)\n", chan_name,
			FUNC2(chan));
		return chan;
	}

	FUNC7(&cfg, 0, sizeof(cfg));
	cfg.direction = dir;
	if (dir == DMA_MEM_TO_DEV) {
		cfg.dst_addr = port_addr;
		cfg.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	} else {
		cfg.src_addr = port_addr;
		cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	}

	ret = FUNC6(chan, &cfg);
	if (ret) {
		FUNC3(dev, "slave_config failed for %s (%d)\n", chan_name, ret);
		FUNC4(chan);
		return FUNC0(ret);
	}

	FUNC3(dev, "got DMA channel for %s\n", chan_name);
	return chan;
}