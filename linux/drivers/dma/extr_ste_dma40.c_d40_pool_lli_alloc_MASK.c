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
typedef  int u32 ;
struct d40_phy_lli {int dummy; } ;
struct d40_log_lli {int dummy; } ;
struct TYPE_8__ {int size; scalar_t__ dma_addr; int /*<<< orphan*/ * base; void* pre_alloc_lli; } ;
struct TYPE_6__ {void* src; scalar_t__ dst; } ;
struct TYPE_5__ {void* src; scalar_t__ dst; } ;
struct d40_desc {TYPE_4__ lli_pool; TYPE_2__ lli_phy; TYPE_1__ lli_log; } ;
struct d40_chan {TYPE_3__* base; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 void* FUNC0 (void*,int) ; 
 int FUNC1 (struct d40_chan*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct d40_chan *d40c, struct d40_desc *d40d,
			      int lli_len)
{
	bool is_log = FUNC1(d40c);
	u32 align;
	void *base;

	if (is_log)
		align = sizeof(struct d40_log_lli);
	else
		align = sizeof(struct d40_phy_lli);

	if (lli_len == 1) {
		base = d40d->lli_pool.pre_alloc_lli;
		d40d->lli_pool.size = sizeof(d40d->lli_pool.pre_alloc_lli);
		d40d->lli_pool.base = NULL;
	} else {
		d40d->lli_pool.size = lli_len * 2 * align;

		base = FUNC5(d40d->lli_pool.size + align, GFP_NOWAIT);
		d40d->lli_pool.base = base;

		if (d40d->lli_pool.base == NULL)
			return -ENOMEM;
	}

	if (is_log) {
		d40d->lli_log.src = FUNC0(base, align);
		d40d->lli_log.dst = d40d->lli_log.src + lli_len;

		d40d->lli_pool.dma_addr = 0;
	} else {
		d40d->lli_phy.src = FUNC0(base, align);
		d40d->lli_phy.dst = d40d->lli_phy.src + lli_len;

		d40d->lli_pool.dma_addr = FUNC2(d40c->base->dev,
							 d40d->lli_phy.src,
							 d40d->lli_pool.size,
							 DMA_TO_DEVICE);

		if (FUNC3(d40c->base->dev,
				      d40d->lli_pool.dma_addr)) {
			FUNC4(d40d->lli_pool.base);
			d40d->lli_pool.base = NULL;
			d40d->lli_pool.dma_addr = 0;
			return -ENOMEM;
		}
	}

	return 0;
}