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
struct ep93xx_dma_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  tx_list; } ;
struct ep93xx_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ep93xx_dma_chan *edmac,
				struct ep93xx_dma_desc *desc)
{
	if (desc) {
		unsigned long flags;

		FUNC2(&edmac->lock, flags);
		FUNC1(&desc->tx_list, &edmac->free_list);
		FUNC0(&desc->node, &edmac->free_list);
		FUNC3(&edmac->lock, flags);
	}
}