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
struct mtk_hsdma_device {int /*<<< orphan*/  pc; int /*<<< orphan*/  pc_refcnt; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_hsdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mtk_hsdma_device* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *c)
{
	struct mtk_hsdma_device *hsdma = FUNC3(c);

	/* Free all descriptors in all lists on the VC */
	FUNC1(c);

	/* The resource for PC is not freed until all the VCs are destroyed */
	if (!FUNC2(&hsdma->pc_refcnt))
		return;

	FUNC0(hsdma, hsdma->pc);
}