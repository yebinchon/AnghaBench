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
struct tegra_adma_desc {size_t buf_len; size_t period_len; size_t num_periods; int /*<<< orphan*/  vd; } ;
struct tegra_adma_chan {int /*<<< orphan*/  vc; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 size_t ADMA_CH_TC_COUNT_MASK ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_adma_desc*) ; 
 struct tegra_adma_desc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_adma_chan*) ; 
 scalar_t__ FUNC5 (struct tegra_adma_chan*,struct tegra_adma_desc*,int /*<<< orphan*/ ,int) ; 
 struct tegra_adma_chan* FUNC6 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *FUNC8(
	struct dma_chan *dc, dma_addr_t buf_addr, size_t buf_len,
	size_t period_len, enum dma_transfer_direction direction,
	unsigned long flags)
{
	struct tegra_adma_chan *tdc = FUNC6(dc);
	struct tegra_adma_desc *desc = NULL;

	if (!buf_len || !period_len || period_len > ADMA_CH_TC_COUNT_MASK) {
		FUNC1(FUNC4(tdc), "invalid buffer/period len\n");
		return NULL;
	}

	if (buf_len % period_len) {
		FUNC1(FUNC4(tdc), "buf_len not a multiple of period_len\n");
		return NULL;
	}

	if (!FUNC0(buf_addr, 4)) {
		FUNC1(FUNC4(tdc), "invalid buffer alignment\n");
		return NULL;
	}

	desc = FUNC3(sizeof(*desc), GFP_NOWAIT);
	if (!desc)
		return NULL;

	desc->buf_len = buf_len;
	desc->period_len = period_len;
	desc->num_periods = buf_len / period_len;

	if (FUNC5(tdc, desc, buf_addr, direction)) {
		FUNC2(desc);
		return NULL;
	}

	return FUNC7(&tdc->vc, &desc->vd, flags);
}