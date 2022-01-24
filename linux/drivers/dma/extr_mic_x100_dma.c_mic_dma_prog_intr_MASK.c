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
struct mic_dma_chan {size_t head; int /*<<< orphan*/  status_dest_micpa; int /*<<< orphan*/ * desc_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mic_dma_chan *ch)
{
	FUNC1(&ch->desc_ring[ch->head], 0,
				 ch->status_dest_micpa, false);
	FUNC0(ch);
	FUNC1(&ch->desc_ring[ch->head], 0,
				 ch->status_dest_micpa, true);
	FUNC0(ch);
}