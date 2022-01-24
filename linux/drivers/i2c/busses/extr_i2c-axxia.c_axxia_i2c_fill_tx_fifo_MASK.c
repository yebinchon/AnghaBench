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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;
struct axxia_i2c_dev {int msg_xfrd; scalar_t__ base; struct i2c_msg* msg; } ;

/* Variables and functions */
 size_t FIFO_SIZE ; 
 scalar_t__ MST_DATA ; 
 scalar_t__ MST_TX_FIFO ; 
 int FUNC0 (size_t,int) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct axxia_i2c_dev *idev)
{
	struct i2c_msg *msg = idev->msg;
	size_t tx_fifo_avail = FIFO_SIZE - FUNC1(idev->base + MST_TX_FIFO);
	int bytes_to_transfer = FUNC0(tx_fifo_avail, msg->len - idev->msg_xfrd);
	int ret = msg->len - idev->msg_xfrd - bytes_to_transfer;

	while (bytes_to_transfer-- > 0)
		FUNC2(msg->buf[idev->msg_xfrd++], idev->base + MST_DATA);

	return ret;
}