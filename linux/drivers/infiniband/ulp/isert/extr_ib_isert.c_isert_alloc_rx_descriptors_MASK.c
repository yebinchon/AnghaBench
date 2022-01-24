#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct isert_device {TYPE_1__* pd; struct ib_device* ib_device; } ;
struct isert_conn {struct iser_rx_desc* rx_descs; struct isert_device* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  done; } ;
struct ib_sge {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct iser_rx_desc {int /*<<< orphan*/  dma_addr; TYPE_2__ rx_cqe; struct ib_sge rx_sg; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ISERT_QP_MAX_RECV_DTOS ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct isert_conn*) ; 
 int /*<<< orphan*/  isert_recv_done ; 
 struct iser_rx_desc* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iser_rx_desc*) ; 

__attribute__((used)) static int
FUNC6(struct isert_conn *isert_conn)
{
	struct isert_device *device = isert_conn->device;
	struct ib_device *ib_dev = device->ib_device;
	struct iser_rx_desc *rx_desc;
	struct ib_sge *rx_sg;
	u64 dma_addr;
	int i, j;

	isert_conn->rx_descs = FUNC4(ISERT_QP_MAX_RECV_DTOS,
				       sizeof(struct iser_rx_desc),
				       GFP_KERNEL);
	if (!isert_conn->rx_descs)
		return -ENOMEM;

	rx_desc = isert_conn->rx_descs;

	for (i = 0; i < ISERT_QP_MAX_RECV_DTOS; i++, rx_desc++)  {
		dma_addr = FUNC0(ib_dev, (void *)rx_desc,
					ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
		if (FUNC1(ib_dev, dma_addr))
			goto dma_map_fail;

		rx_desc->dma_addr = dma_addr;

		rx_sg = &rx_desc->rx_sg;
		rx_sg->addr = rx_desc->dma_addr;
		rx_sg->length = ISER_RX_PAYLOAD_SIZE;
		rx_sg->lkey = device->pd->local_dma_lkey;
		rx_desc->rx_cqe.done = isert_recv_done;
	}

	return 0;

dma_map_fail:
	rx_desc = isert_conn->rx_descs;
	for (j = 0; j < i; j++, rx_desc++) {
		FUNC2(ib_dev, rx_desc->dma_addr,
				    ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
	}
	FUNC5(isert_conn->rx_descs);
	isert_conn->rx_descs = NULL;
	FUNC3("conn %p failed to allocate rx descriptors\n", isert_conn);
	return -ENOMEM;
}