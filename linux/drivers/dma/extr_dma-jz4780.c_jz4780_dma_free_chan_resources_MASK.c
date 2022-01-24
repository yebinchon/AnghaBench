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
struct jz4780_dma_chan {int /*<<< orphan*/ * desc_pool; int /*<<< orphan*/  vchan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct jz4780_dma_chan* FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dma_chan *chan)
{
	struct jz4780_dma_chan *jzchan = FUNC1(chan);

	FUNC2(&jzchan->vchan);
	FUNC0(jzchan->desc_pool);
	jzchan->desc_pool = NULL;
}