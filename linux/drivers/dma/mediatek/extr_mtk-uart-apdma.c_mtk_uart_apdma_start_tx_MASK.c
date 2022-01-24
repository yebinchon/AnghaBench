#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mtk_uart_apdmadev {scalar_t__ support_33bits; } ;
struct mtk_uart_apdma_desc {unsigned int addr; scalar_t__ avail_len; } ;
struct TYPE_6__ {TYPE_4__* device; } ;
struct TYPE_7__ {TYPE_2__ chan; } ;
struct TYPE_5__ {unsigned int dst_port_window_size; } ;
struct mtk_chan {struct mtk_uart_apdma_desc* desc; TYPE_3__ vc; TYPE_1__ cfg; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int VFF_4G_EN_B ; 
 int /*<<< orphan*/  VFF_4G_SUPPORT ; 
 int /*<<< orphan*/  VFF_ADDR ; 
 int /*<<< orphan*/  VFF_EN ; 
 unsigned int VFF_EN_B ; 
 int /*<<< orphan*/  VFF_FLUSH ; 
 unsigned int VFF_FLUSH_B ; 
 int /*<<< orphan*/  VFF_INT_EN ; 
 int /*<<< orphan*/  VFF_INT_FLAG ; 
 int /*<<< orphan*/  VFF_LEFT_SIZE ; 
 int /*<<< orphan*/  VFF_LEN ; 
 unsigned int VFF_RING_SIZE ; 
 unsigned int VFF_RING_WRAP ; 
 int /*<<< orphan*/  VFF_THRE ; 
 unsigned int VFF_TX_INT_CLR_B ; 
 unsigned int VFF_TX_INT_EN_B ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  VFF_WPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (struct mtk_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_chan*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_uart_apdmadev* FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(struct mtk_chan *c)
{
	struct mtk_uart_apdmadev *mtkd =
				FUNC4(c->vc.chan.device);
	struct mtk_uart_apdma_desc *d = c->desc;
	unsigned int wpt, vff_sz;

	vff_sz = c->cfg.dst_port_window_size;
	if (!FUNC2(c, VFF_LEN)) {
		FUNC3(c, VFF_ADDR, d->addr);
		FUNC3(c, VFF_LEN, vff_sz);
		FUNC3(c, VFF_THRE, FUNC0(vff_sz));
		FUNC3(c, VFF_WPT, 0);
		FUNC3(c, VFF_INT_FLAG, VFF_TX_INT_CLR_B);

		if (mtkd->support_33bits)
			FUNC3(c, VFF_4G_SUPPORT, VFF_4G_EN_B);
	}

	FUNC3(c, VFF_EN, VFF_EN_B);
	if (FUNC2(c, VFF_EN) != VFF_EN_B)
		FUNC1(c->vc.chan.device->dev, "Enable TX fail\n");

	if (!FUNC2(c, VFF_LEFT_SIZE)) {
		FUNC3(c, VFF_INT_EN, VFF_TX_INT_EN_B);
		return;
	}

	wpt = FUNC2(c, VFF_WPT);

	wpt += c->desc->avail_len;
	if ((wpt & VFF_RING_SIZE) == vff_sz)
		wpt = (wpt & VFF_RING_WRAP) ^ VFF_RING_WRAP;

	/* Let DMA start moving data */
	FUNC3(c, VFF_WPT, wpt);

	/* HW auto set to 0 when left size >= threshold */
	FUNC3(c, VFF_INT_EN, VFF_TX_INT_EN_B);
	if (!FUNC2(c, VFF_FLUSH))
		FUNC3(c, VFF_FLUSH, VFF_FLUSH_B);
}