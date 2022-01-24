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
struct TYPE_4__ {TYPE_1__* chan; } ;
struct virt_dma_desc {TYPE_2__ tx; } ;
struct sun6i_dma_lli {int /*<<< orphan*/  p_lli_next; struct sun6i_dma_lli* v_lli_next; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  pool; } ;
struct sun6i_desc {struct sun6i_dma_lli* v_lli; int /*<<< orphan*/  p_lli; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sun6i_dma_lli*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sun6i_desc*) ; 
 struct sun6i_desc* FUNC2 (TYPE_2__*) ; 
 struct sun6i_dma_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct virt_dma_desc *vd)
{
	struct sun6i_desc *txd = FUNC2(&vd->tx);
	struct sun6i_dma_dev *sdev = FUNC3(vd->tx.chan->device);
	struct sun6i_dma_lli *v_lli, *v_next;
	dma_addr_t p_lli, p_next;

	if (FUNC4(!txd))
		return;

	p_lli = txd->p_lli;
	v_lli = txd->v_lli;

	while (v_lli) {
		v_next = v_lli->v_lli_next;
		p_next = v_lli->p_lli_next;

		FUNC0(sdev->pool, v_lli, p_lli);

		v_lli = v_next;
		p_lli = p_next;
	}

	FUNC1(txd);
}