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
struct hsu_dma_desc {int active; int nents; TYPE_1__* sg; } ;
struct hsu_dma_chan {struct hsu_dma_desc* desc; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HSU_DMA_CHAN_NR_DESC ; 
 scalar_t__ FUNC1 (struct hsu_dma_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC2(struct hsu_dma_chan *hsuc)
{
	struct hsu_dma_desc *desc = hsuc->desc;
	size_t bytes = 0;
	int i;

	for (i = desc->active; i < desc->nents; i++)
		bytes += desc->sg[i].len;

	i = HSU_DMA_CHAN_NR_DESC - 1;
	do {
		bytes += FUNC1(hsuc, FUNC0(i));
	} while (--i >= 0);

	return bytes;
}