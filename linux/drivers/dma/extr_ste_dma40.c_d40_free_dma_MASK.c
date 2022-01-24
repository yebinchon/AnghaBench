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
typedef  int /*<<< orphan*/  u32 ;
struct d40_phy_res {scalar_t__ allocated_src; scalar_t__ allocated_dst; size_t num; } ;
struct TYPE_3__ {scalar_t__ dir; int /*<<< orphan*/  dev_type; } ;
struct d40_chan {size_t log_num; int busy; int configured; TYPE_2__* base; struct d40_phy_res* phy_chan; TYPE_1__ dma_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ ** lookup_phy_chans; int /*<<< orphan*/ ** lookup_log_chans; } ;

/* Variables and functions */
 scalar_t__ D40_ALLOC_FREE ; 
 int /*<<< orphan*/  D40_DMA_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMA_DEV_TO_MEM ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 scalar_t__ DMA_MEM_TO_MEM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct d40_chan*,char*) ; 
 scalar_t__ FUNC2 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct d40_phy_res*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct d40_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct d40_chan *d40c)
{

	int res = 0;
	u32 event = FUNC0(d40c->dma_cfg.dev_type);
	struct d40_phy_res *phy = d40c->phy_chan;
	bool is_src;

	/* Terminate all queued and active transfers */
	FUNC5(d40c);

	if (phy == NULL) {
		FUNC1(d40c, "phy == null\n");
		return -EINVAL;
	}

	if (phy->allocated_src == D40_ALLOC_FREE &&
	    phy->allocated_dst == D40_ALLOC_FREE) {
		FUNC1(d40c, "channel already free\n");
		return -EINVAL;
	}

	if (d40c->dma_cfg.dir == DMA_MEM_TO_DEV ||
	    d40c->dma_cfg.dir == DMA_MEM_TO_MEM)
		is_src = false;
	else if (d40c->dma_cfg.dir == DMA_DEV_TO_MEM)
		is_src = true;
	else {
		FUNC1(d40c, "Unknown direction\n");
		return -EINVAL;
	}

	FUNC6(d40c->base->dev);
	res = FUNC4(d40c, D40_DMA_STOP);
	if (res) {
		FUNC1(d40c, "stop failed\n");
		goto mark_last_busy;
	}

	FUNC3(phy, is_src, FUNC2(d40c) ? event : 0);

	if (FUNC2(d40c))
		d40c->base->lookup_log_chans[d40c->log_num] = NULL;
	else
		d40c->base->lookup_phy_chans[phy->num] = NULL;

	if (d40c->busy) {
		FUNC7(d40c->base->dev);
		FUNC8(d40c->base->dev);
	}

	d40c->busy = false;
	d40c->phy_chan = NULL;
	d40c->configured = false;
 mark_last_busy:
	FUNC7(d40c->base->dev);
	FUNC8(d40c->base->dev);
	return res;
}