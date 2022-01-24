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
typedef  void* u32 ;
struct dma_slave_config {void* src_addr; void* dst_addr; } ;
struct sun6i_vchan {int cyclic; int /*<<< orphan*/  vc; int /*<<< orphan*/  port; struct dma_slave_config cfg; } ;
struct sun6i_dma_lli {size_t len; struct sun6i_dma_lli* v_lli_next; int /*<<< orphan*/  p_lli_next; void* cfg; void* dst; void* src; int /*<<< orphan*/  para; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  pool; TYPE_2__* cfg; TYPE_1__ slave; } ;
struct sun6i_desc {struct sun6i_dma_lli* v_lli; int /*<<< orphan*/  vd; int /*<<< orphan*/  p_lli; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  void* dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_mode ) (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_drq ) (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DRQ_SDRAM ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  IO_MODE ; 
 int /*<<< orphan*/  LINEAR_MODE ; 
 int /*<<< orphan*/  NORMAL_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct sun6i_dma_lli* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sun6i_dma_lli*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sun6i_desc*) ; 
 struct sun6i_desc* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sun6i_dma_dev*,struct dma_slave_config*,int,void**) ; 
 int /*<<< orphan*/  FUNC7 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sun6i_dma_lli* FUNC11 (struct sun6i_dma_lli*,struct sun6i_dma_lli*,void*,struct sun6i_desc*) ; 
 struct sun6i_dma_dev* FUNC12 (int /*<<< orphan*/ ) ; 
 struct sun6i_vchan* FUNC13 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct sun6i_dma_lli*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC16(
					struct dma_chan *chan,
					dma_addr_t buf_addr,
					size_t buf_len,
					size_t period_len,
					enum dma_transfer_direction dir,
					unsigned long flags)
{
	struct sun6i_dma_dev *sdev = FUNC12(chan->device);
	struct sun6i_vchan *vchan = FUNC13(chan);
	struct dma_slave_config *sconfig = &vchan->cfg;
	struct sun6i_dma_lli *v_lli, *prev = NULL;
	struct sun6i_desc *txd;
	dma_addr_t p_lli;
	u32 lli_cfg;
	unsigned int i, periods = buf_len / period_len;
	int ret;

	ret = FUNC6(sdev, sconfig, dir, &lli_cfg);
	if (ret) {
		FUNC1(FUNC0(chan), "Invalid DMA configuration\n");
		return NULL;
	}

	txd = FUNC5(sizeof(*txd), GFP_NOWAIT);
	if (!txd)
		return NULL;

	for (i = 0; i < periods; i++) {
		v_lli = FUNC2(sdev->pool, GFP_NOWAIT, &p_lli);
		if (!v_lli) {
			FUNC1(sdev->slave.dev, "Failed to alloc lli memory\n");
			goto err_lli_free;
		}

		v_lli->len = period_len;
		v_lli->para = NORMAL_WAIT;

		if (dir == DMA_MEM_TO_DEV) {
			v_lli->src = buf_addr + period_len * i;
			v_lli->dst = sconfig->dst_addr;
			v_lli->cfg = lli_cfg;
			sdev->cfg->set_drq(&v_lli->cfg, DRQ_SDRAM, vchan->port);
			sdev->cfg->set_mode(&v_lli->cfg, LINEAR_MODE, IO_MODE);
		} else {
			v_lli->src = sconfig->src_addr;
			v_lli->dst = buf_addr + period_len * i;
			v_lli->cfg = lli_cfg;
			sdev->cfg->set_drq(&v_lli->cfg, vchan->port, DRQ_SDRAM);
			sdev->cfg->set_mode(&v_lli->cfg, IO_MODE, LINEAR_MODE);
		}

		prev = FUNC11(prev, v_lli, p_lli, txd);
	}

	prev->p_lli_next = txd->p_lli;		/* cyclic list */

	vchan->cyclic = true;

	return FUNC14(&vchan->vc, &txd->vd, flags);

err_lli_free:
	for (prev = txd->v_lli; prev; prev = prev->v_lli_next)
		FUNC3(sdev->pool, prev, FUNC15(prev));
	FUNC4(txd);
	return NULL;
}