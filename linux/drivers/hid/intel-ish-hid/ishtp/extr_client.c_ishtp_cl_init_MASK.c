#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ishtp_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  list; } ;
struct TYPE_7__ {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct ishtp_cl {int last_dma_acked; int last_ipc_acked; int /*<<< orphan*/ * last_dma_addr; int /*<<< orphan*/  last_tx_path; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  tx_ring_free_size; int /*<<< orphan*/  rx_ring_size; TYPE_4__ in_process_list; TYPE_3__ tx_free_list; TYPE_2__ tx_list; TYPE_1__ free_rb_list; struct ishtp_device* dev; int /*<<< orphan*/  link; int /*<<< orphan*/  fc_spinlock; int /*<<< orphan*/  tx_free_list_spinlock; int /*<<< orphan*/  tx_list_spinlock; int /*<<< orphan*/  in_process_spinlock; int /*<<< orphan*/  free_list_spinlock; int /*<<< orphan*/  wait_ctrl_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_DEF_RX_RING_SIZE ; 
 int /*<<< orphan*/  CL_DEF_TX_RING_SIZE ; 
 int /*<<< orphan*/  CL_TX_PATH_IPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_cl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ishtp_cl *cl, struct ishtp_device *dev)
{
	FUNC2(cl, 0, sizeof(struct ishtp_cl));
	FUNC1(&cl->wait_ctrl_res);
	FUNC3(&cl->free_list_spinlock);
	FUNC3(&cl->in_process_spinlock);
	FUNC3(&cl->tx_list_spinlock);
	FUNC3(&cl->tx_free_list_spinlock);
	FUNC3(&cl->fc_spinlock);
	FUNC0(&cl->link);
	cl->dev = dev;

	FUNC0(&cl->free_rb_list.list);
	FUNC0(&cl->tx_list.list);
	FUNC0(&cl->tx_free_list.list);
	FUNC0(&cl->in_process_list.list);

	cl->rx_ring_size = CL_DEF_RX_RING_SIZE;
	cl->tx_ring_size = CL_DEF_TX_RING_SIZE;
	cl->tx_ring_free_size = cl->tx_ring_size;

	/* dma */
	cl->last_tx_path = CL_TX_PATH_IPC;
	cl->last_dma_acked = 1;
	cl->last_dma_addr = NULL;
	cl->last_ipc_acked = 1;
}