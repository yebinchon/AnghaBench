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
struct TYPE_2__ {int /*<<< orphan*/  phys; int /*<<< orphan*/  chan; } ;
struct timb_dma_desc {struct timb_dma_desc* desc_list; int /*<<< orphan*/  desc_list_len; TYPE_1__ txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct timb_dma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timb_dma_desc*) ; 

__attribute__((used)) static void FUNC5(struct timb_dma_desc *td_desc)
{
	FUNC2(FUNC0(td_desc->txd.chan), "Freeing desc: %p\n", td_desc);
	FUNC3(FUNC1(td_desc->txd.chan), td_desc->txd.phys,
		td_desc->desc_list_len, DMA_TO_DEVICE);

	FUNC4(td_desc->desc_list);
	FUNC4(td_desc);
}