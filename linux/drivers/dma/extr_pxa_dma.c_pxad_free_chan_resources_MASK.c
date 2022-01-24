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
struct pxad_chan {int /*<<< orphan*/  prio; int /*<<< orphan*/  drcmr; int /*<<< orphan*/ * desc_pool; int /*<<< orphan*/  vc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PXAD_PRIO_LOWEST ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pxad_chan* FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dma_chan *dchan)
{
	struct pxad_chan *chan = FUNC1(dchan);

	FUNC2(&chan->vc);
	FUNC0(chan->desc_pool);
	chan->desc_pool = NULL;

	chan->drcmr = U32_MAX;
	chan->prio = PXAD_PRIO_LOWEST;
}