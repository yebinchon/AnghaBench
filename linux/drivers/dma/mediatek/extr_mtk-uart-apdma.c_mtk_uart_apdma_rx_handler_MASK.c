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
struct TYPE_4__ {int /*<<< orphan*/  node; } ;
struct mtk_uart_apdma_desc {TYPE_2__ vd; scalar_t__ avail_len; } ;
struct TYPE_3__ {unsigned int src_port_window_size; } ;
struct mtk_chan {scalar_t__ rx_status; TYPE_1__ cfg; struct mtk_uart_apdma_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFF_EN ; 
 unsigned int VFF_EN_CLR_B ; 
 int /*<<< orphan*/  VFF_INT_EN ; 
 unsigned int VFF_INT_EN_CLR_B ; 
 int /*<<< orphan*/  VFF_INT_FLAG ; 
 unsigned int VFF_RING_SIZE ; 
 unsigned int VFF_RING_WRAP ; 
 int /*<<< orphan*/  VFF_RPT ; 
 unsigned int VFF_RX_INT_CLR_B ; 
 int /*<<< orphan*/  VFF_VALID_SIZE ; 
 int /*<<< orphan*/  VFF_WPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct mtk_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_chan*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct mtk_chan *c)
{
	struct mtk_uart_apdma_desc *d = c->desc;
	unsigned int len, wg, rg;
	int cnt;

	FUNC2(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);

	if (!FUNC1(c, VFF_VALID_SIZE))
		return;

	FUNC2(c, VFF_EN, VFF_EN_CLR_B);
	FUNC2(c, VFF_INT_EN, VFF_INT_EN_CLR_B);

	len = c->cfg.src_port_window_size;
	rg = FUNC1(c, VFF_RPT);
	wg = FUNC1(c, VFF_WPT);
	cnt = (wg & VFF_RING_SIZE) - (rg & VFF_RING_SIZE);

	/*
	 * The buffer is ring buffer. If wrap bit different,
	 * represents the start of the next cycle for WPT
	 */
	if ((rg ^ wg) & VFF_RING_WRAP)
		cnt += len;

	c->rx_status = d->avail_len - cnt;
	FUNC2(c, VFF_RPT, wg);

	FUNC0(&d->vd.node);
	FUNC3(&d->vd);
}