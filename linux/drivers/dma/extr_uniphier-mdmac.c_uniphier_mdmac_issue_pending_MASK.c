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
struct virt_dma_chan {int /*<<< orphan*/  lock; } ;
struct uniphier_mdmac_chan {int /*<<< orphan*/  md; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uniphier_mdmac_chan* FUNC2 (struct virt_dma_chan*) ; 
 struct virt_dma_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct uniphier_mdmac_chan*) ; 
 scalar_t__ FUNC5 (struct virt_dma_chan*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct virt_dma_chan *vc = FUNC3(chan);
	struct uniphier_mdmac_chan *mc = FUNC2(vc);
	unsigned long flags;

	FUNC0(&vc->lock, flags);

	if (FUNC5(vc) && !mc->md)
		FUNC4(mc);

	FUNC1(&vc->lock, flags);
}