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
struct virt_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_issued; int /*<<< orphan*/  desc_submitted; int /*<<< orphan*/  desc_allocated; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virt_dma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct virt_dma_chan*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *c)
{
	struct virt_dma_chan *vc = FUNC4(c);
	unsigned long flags;
	FUNC0(head);

	/*
	 * set desc_allocated, desc_submitted,
	 * and desc_issued as the candicates to be freed
	 */
	FUNC2(&vc->lock, flags);
	FUNC1(&vc->desc_allocated, &head);
	FUNC1(&vc->desc_submitted, &head);
	FUNC1(&vc->desc_issued, &head);
	FUNC3(&vc->lock, flags);

	/* free descriptor lists */
	FUNC5(vc, &head);
}