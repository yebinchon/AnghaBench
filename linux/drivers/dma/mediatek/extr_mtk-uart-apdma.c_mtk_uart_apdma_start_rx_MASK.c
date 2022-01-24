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
struct mtk_uart_apdma_desc {unsigned int addr; } ;
struct TYPE_6__ {TYPE_4__* device; } ;
struct TYPE_7__ {TYPE_2__ chan; } ;
struct TYPE_5__ {unsigned int src_port_window_size; } ;
struct mtk_chan {TYPE_3__ vc; TYPE_1__ cfg; struct mtk_uart_apdma_desc* desc; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int VFF_4G_EN_B ; 
 int /*<<< orphan*/  VFF_4G_SUPPORT ; 
 int /*<<< orphan*/  VFF_ADDR ; 
 int /*<<< orphan*/  VFF_EN ; 
 unsigned int VFF_EN_B ; 
 int /*<<< orphan*/  VFF_INT_EN ; 
 int /*<<< orphan*/  VFF_INT_FLAG ; 
 int /*<<< orphan*/  VFF_LEN ; 
 int /*<<< orphan*/  VFF_RPT ; 
 unsigned int VFF_RX_INT_CLR_B ; 
 unsigned int VFF_RX_INT_EN_B ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  VFF_THRE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (struct mtk_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_chan*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_uart_apdmadev* FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(struct mtk_chan *c)
{
	struct mtk_uart_apdmadev *mtkd =
				FUNC4(c->vc.chan.device);
	struct mtk_uart_apdma_desc *d = c->desc;
	unsigned int vff_sz;

	vff_sz = c->cfg.src_port_window_size;
	if (!FUNC2(c, VFF_LEN)) {
		FUNC3(c, VFF_ADDR, d->addr);
		FUNC3(c, VFF_LEN, vff_sz);
		FUNC3(c, VFF_THRE, FUNC0(vff_sz));
		FUNC3(c, VFF_RPT, 0);
		FUNC3(c, VFF_INT_FLAG, VFF_RX_INT_CLR_B);

		if (mtkd->support_33bits)
			FUNC3(c, VFF_4G_SUPPORT, VFF_4G_EN_B);
	}

	FUNC3(c, VFF_INT_EN, VFF_RX_INT_EN_B);
	FUNC3(c, VFF_EN, VFF_EN_B);
	if (FUNC2(c, VFF_EN) != VFF_EN_B)
		FUNC1(c->vc.chan.device->dev, "Enable RX fail\n");
}