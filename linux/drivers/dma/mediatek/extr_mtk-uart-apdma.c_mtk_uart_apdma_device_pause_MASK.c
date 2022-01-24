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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mtk_chan {TYPE_1__ vc; int /*<<< orphan*/  irq; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFF_EN ; 
 int /*<<< orphan*/  VFF_EN_CLR_B ; 
 int /*<<< orphan*/  VFF_INT_EN ; 
 int /*<<< orphan*/  VFF_INT_EN_CLR_B ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mtk_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *chan)
{
	struct mtk_chan *c = FUNC4(chan);
	unsigned long flags;

	FUNC1(&c->vc.lock, flags);

	FUNC0(c, VFF_EN, VFF_EN_CLR_B);
	FUNC0(c, VFF_INT_EN, VFF_INT_EN_CLR_B);

	FUNC3(c->irq);

	FUNC2(&c->vc.lock, flags);

	return 0;
}