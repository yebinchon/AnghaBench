#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mic_dma_chan {int /*<<< orphan*/  status_dest; int /*<<< orphan*/  status_dest_micpa; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct mic_dma_chan*) ; 

__attribute__((used)) static void FUNC3(struct mic_dma_chan *ch)
{
	FUNC0(&FUNC2(ch)->dev, ch->status_dest_micpa,
			 L1_CACHE_BYTES, DMA_BIDIRECTIONAL);
	FUNC1(ch->status_dest);
}