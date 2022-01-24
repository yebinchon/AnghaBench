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
struct mv_xor_chan {scalar_t__ pending; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ MV_XOR_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct mv_xor_chan*) ; 
 struct mv_xor_chan* FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC2(struct dma_chan *chan)
{
	struct mv_xor_chan *mv_chan = FUNC1(chan);

	if (mv_chan->pending >= MV_XOR_THRESHOLD) {
		mv_chan->pending = 0;
		FUNC0(mv_chan);
	}
}