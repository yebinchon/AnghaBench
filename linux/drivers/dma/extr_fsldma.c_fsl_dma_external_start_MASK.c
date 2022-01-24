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
struct fsldma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fsldma_chan*,int) ; 
 struct fsldma_chan* FUNC1 (struct dma_chan*) ; 

int FUNC2(struct dma_chan *dchan, int enable)
{
	struct fsldma_chan *chan;

	if (!dchan)
		return -EINVAL;

	chan = FUNC1(dchan);

	FUNC0(chan, enable);
	return 0;
}