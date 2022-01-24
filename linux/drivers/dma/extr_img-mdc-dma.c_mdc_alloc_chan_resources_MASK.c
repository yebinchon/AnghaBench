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
struct mdc_chan {int /*<<< orphan*/  mdma; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 struct mdc_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *chan)
{
	struct mdc_chan *mchan = FUNC2(chan);
	struct device *dev = FUNC0(mchan->mdma);

	return FUNC1(dev);
}