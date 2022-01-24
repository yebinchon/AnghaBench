#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zx_dma_dev {int /*<<< orphan*/  pool; } ;
struct zx_dma_desc_sw {int desc_num; int /*<<< orphan*/  desc_hw; int /*<<< orphan*/  desc_hw_lli; } ;
struct zx_dma_chan {int /*<<< orphan*/  vc; } ;
struct zx_desc_hw {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int LLI_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zx_dma_desc_sw*) ; 
 struct zx_dma_desc_sw* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct zx_dma_chan* FUNC4 (struct dma_chan*) ; 
 struct zx_dma_dev* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static struct zx_dma_desc_sw *FUNC6(int num,
						     struct dma_chan *chan)
{
	struct zx_dma_chan *c = FUNC4(chan);
	struct zx_dma_desc_sw *ds;
	struct zx_dma_dev *d = FUNC5(chan->device);
	int lli_limit = LLI_BLOCK_SIZE / sizeof(struct zx_desc_hw);

	if (num > lli_limit) {
		FUNC0(chan->device->dev, "vch %p: sg num %d exceed max %d\n",
			&c->vc, num, lli_limit);
		return NULL;
	}

	ds = FUNC3(sizeof(*ds), GFP_ATOMIC);
	if (!ds)
		return NULL;

	ds->desc_hw = FUNC1(d->pool, GFP_NOWAIT, &ds->desc_hw_lli);
	if (!ds->desc_hw) {
		FUNC0(chan->device->dev, "vch %p: dma alloc fail\n", &c->vc);
		FUNC2(ds);
		return NULL;
	}
	ds->desc_num = num;
	return ds;
}