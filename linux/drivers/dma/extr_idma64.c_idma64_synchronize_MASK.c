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
struct idma64_chan {int /*<<< orphan*/  vchan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 struct idma64_chan* FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dma_chan *chan)
{
	struct idma64_chan *idma64c = FUNC0(chan);

	FUNC1(&idma64c->vchan);
}