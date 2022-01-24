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
struct mmp_tdma_chan {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmp_tdma_chan*) ; 
 struct mmp_tdma_chan* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC2(struct dma_chan *chan)
{
	struct mmp_tdma_chan *tdmac = FUNC1(chan);

	FUNC0(tdmac);
}