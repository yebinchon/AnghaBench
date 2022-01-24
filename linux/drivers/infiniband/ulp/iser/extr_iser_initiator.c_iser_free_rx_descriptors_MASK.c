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
struct iser_rx_desc {int /*<<< orphan*/  dma_addr; } ;
struct iser_device {int /*<<< orphan*/  ib_device; TYPE_1__* reg_ops; } ;
struct ib_conn {struct iser_device* device; } ;
struct iser_conn {int qp_max_recv_dtos; struct iser_rx_desc* rx_descs; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_reg_res ) (struct ib_conn*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_rx_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_conn*) ; 

void FUNC4(struct iser_conn *iser_conn)
{
	int i;
	struct iser_rx_desc *rx_desc;
	struct ib_conn *ib_conn = &iser_conn->ib_conn;
	struct iser_device *device = ib_conn->device;

	if (device->reg_ops->free_reg_res)
		device->reg_ops->free_reg_res(ib_conn);

	rx_desc = iser_conn->rx_descs;
	for (i = 0; i < iser_conn->qp_max_recv_dtos; i++, rx_desc++)
		FUNC0(device->ib_device, rx_desc->dma_addr,
				    ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
	FUNC2(iser_conn->rx_descs);
	/* make sure we never redo any unmapping */
	iser_conn->rx_descs = NULL;

	FUNC1(iser_conn);
}