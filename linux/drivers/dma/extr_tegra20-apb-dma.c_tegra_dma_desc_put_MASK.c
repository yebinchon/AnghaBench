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
struct tegra_dma_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  tx_list; } ;
struct tegra_dma_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_dma_desc; int /*<<< orphan*/  free_sg_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct tegra_dma_channel *tdc,
		struct tegra_dma_desc *dma_desc)
{
	unsigned long flags;

	FUNC3(&tdc->lock, flags);
	if (!FUNC1(&dma_desc->tx_list))
		FUNC2(&dma_desc->tx_list, &tdc->free_sg_req);
	FUNC0(&dma_desc->node, &tdc->free_dma_desc);
	FUNC4(&tdc->lock, flags);
}