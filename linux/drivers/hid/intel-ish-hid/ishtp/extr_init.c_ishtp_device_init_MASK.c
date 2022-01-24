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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ishtp_device {TYPE_1__ read_list; int /*<<< orphan*/  host_clients_map; scalar_t__ open_handle_count; int /*<<< orphan*/  bh_hbm_work; int /*<<< orphan*/  fw_clients_lock; int /*<<< orphan*/  cl_list_lock; int /*<<< orphan*/  device_list_lock; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  read_list_spinlock; int /*<<< orphan*/  wait_hbm_recvd_msg; int /*<<< orphan*/  rd_msg_spinlock; scalar_t__ rd_msg_fifo_tail; scalar_t__ rd_msg_fifo_head; int /*<<< orphan*/  device_list; int /*<<< orphan*/  cl_list; int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISHTP_CLIENTS_MAX ; 
 int /*<<< orphan*/  ISHTP_DEV_INITIALIZING ; 
 int /*<<< orphan*/  bh_hbm_work_fn ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ishtp_device *dev)
{
	dev->dev_state = ISHTP_DEV_INITIALIZING;
	FUNC0(&dev->cl_list);
	FUNC0(&dev->device_list);
	dev->rd_msg_fifo_head = 0;
	dev->rd_msg_fifo_tail = 0;
	FUNC5(&dev->rd_msg_spinlock);

	FUNC4(&dev->wait_hbm_recvd_msg);
	FUNC5(&dev->read_list_spinlock);
	FUNC5(&dev->device_lock);
	FUNC5(&dev->device_list_lock);
	FUNC5(&dev->cl_list_lock);
	FUNC5(&dev->fw_clients_lock);
	FUNC1(&dev->bh_hbm_work, bh_hbm_work_fn);

	FUNC3(dev->host_clients_map, ISHTP_CLIENTS_MAX);
	dev->open_handle_count = 0;

	/*
	 * Reserving client ID 0 for ISHTP Bus Message communications
	 */
	FUNC2(dev->host_clients_map, 0, 1);

	FUNC0(&dev->read_list.list);

}