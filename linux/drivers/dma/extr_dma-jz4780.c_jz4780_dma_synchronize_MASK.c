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
struct jz4780_dma_dev {int dummy; } ;
struct jz4780_dma_chan {int /*<<< orphan*/  id; int /*<<< orphan*/  vchan; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_dma_dev*,int /*<<< orphan*/ ) ; 
 struct jz4780_dma_dev* FUNC1 (struct jz4780_dma_chan*) ; 
 struct jz4780_dma_chan* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *chan)
{
	struct jz4780_dma_chan *jzchan = FUNC2(chan);
	struct jz4780_dma_dev *jzdma = FUNC1(jzchan);

	FUNC3(&jzchan->vchan);
	FUNC0(jzdma, jzchan->id);
}