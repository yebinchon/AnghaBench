#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct tegra_adma_chan {TYPE_1__ vc; scalar_t__ desc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_adma_chan*) ; 
 struct tegra_adma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *dc)
{
	struct tegra_adma_chan *tdc = FUNC5(dc);
	unsigned long flags;
	FUNC0(head);

	FUNC1(&tdc->vc.lock, flags);

	if (tdc->desc)
		FUNC4(tdc);

	FUNC3(tdc);
	FUNC7(&tdc->vc, &head);
	FUNC2(&tdc->vc.lock, flags);
	FUNC6(&tdc->vc, &head);

	return 0;
}