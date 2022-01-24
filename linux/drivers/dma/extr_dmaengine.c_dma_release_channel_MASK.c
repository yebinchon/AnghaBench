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
struct dma_chan {int client_count; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ privatecnt; int /*<<< orphan*/  cap_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  dma_list_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dma_chan *chan)
{
	FUNC3(&dma_list_mutex);
	FUNC0(chan->client_count != 1,
		  "chan reference count %d != 1\n", chan->client_count);
	FUNC2(chan);
	/* drop PRIVATE cap enabled by __dma_request_channel() */
	if (--chan->device->privatecnt == 0)
		FUNC1(DMA_PRIVATE, chan->device->cap_mask);
	FUNC4(&dma_list_mutex);
}