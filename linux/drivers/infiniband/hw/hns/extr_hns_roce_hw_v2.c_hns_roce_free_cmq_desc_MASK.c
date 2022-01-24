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
struct hns_roce_v2_cmq_ring {int desc_num; int /*<<< orphan*/  desc; scalar_t__ desc_dma_addr; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;
struct hns_roce_cmq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hns_roce_dev *hr_dev,
				   struct hns_roce_v2_cmq_ring *ring)
{
	FUNC0(hr_dev->dev, ring->desc_dma_addr,
			 ring->desc_num * sizeof(struct hns_roce_cmq_desc),
			 DMA_BIDIRECTIONAL);

	ring->desc_dma_addr = 0;
	FUNC1(ring->desc);
}