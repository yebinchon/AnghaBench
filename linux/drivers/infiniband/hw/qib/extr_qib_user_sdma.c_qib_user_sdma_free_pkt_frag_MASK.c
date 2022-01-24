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
struct qib_user_sdma_queue {int /*<<< orphan*/  header_cache; } ;
struct qib_user_sdma_pkt {TYPE_1__* addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ kvaddr; scalar_t__ addr; int /*<<< orphan*/  dma_length; scalar_t__ dma_mapped; scalar_t__ page; scalar_t__ put_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct device *dev,
					struct qib_user_sdma_queue *pq,
					struct qib_user_sdma_pkt *pkt,
					int frag)
{
	const int i = frag;

	if (pkt->addr[i].page) {
		/* only user data has page */
		if (pkt->addr[i].dma_mapped)
			FUNC2(dev,
				       pkt->addr[i].addr,
				       pkt->addr[i].dma_length,
				       DMA_TO_DEVICE);

		if (pkt->addr[i].kvaddr)
			FUNC5(pkt->addr[i].page);

		if (pkt->addr[i].put_page)
			FUNC6(pkt->addr[i].page);
		else
			FUNC0(pkt->addr[i].page);
	} else if (pkt->addr[i].kvaddr) {
		/* for headers */
		if (pkt->addr[i].dma_mapped) {
			/* from kmalloc & dma mapped */
			FUNC3(dev,
				       pkt->addr[i].addr,
				       pkt->addr[i].dma_length,
				       DMA_TO_DEVICE);
			FUNC4(pkt->addr[i].kvaddr);
		} else if (pkt->addr[i].addr) {
			/* free coherent mem from cache... */
			FUNC1(pq->header_cache,
			      pkt->addr[i].kvaddr, pkt->addr[i].addr);
		} else {
			/* from kmalloc but not dma mapped */
			FUNC4(pkt->addr[i].kvaddr);
		}
	}
}