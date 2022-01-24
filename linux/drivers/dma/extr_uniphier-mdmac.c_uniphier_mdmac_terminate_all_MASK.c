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
struct virt_dma_chan {int /*<<< orphan*/  lock; } ;
struct uniphier_mdmac_chan {TYPE_1__* md; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_mdmac_chan* FUNC3 (struct virt_dma_chan*) ; 
 struct virt_dma_chan* FUNC4 (struct dma_chan*) ; 
 int FUNC5 (struct uniphier_mdmac_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct virt_dma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct virt_dma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	struct virt_dma_chan *vc = FUNC4(chan);
	struct uniphier_mdmac_chan *mc = FUNC3(vc);
	unsigned long flags;
	int ret = 0;
	FUNC0(head);

	FUNC1(&vc->lock, flags);

	if (mc->md) {
		FUNC8(&mc->md->vd);
		mc->md = NULL;
		ret = FUNC5(mc);
	}
	FUNC7(vc, &head);

	FUNC2(&vc->lock, flags);

	FUNC6(vc, &head);

	return ret;
}