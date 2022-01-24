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
struct i2c_msg {int len; int* buf; } ;
struct axxia_i2c_dev {int msg_xfrd_r; scalar_t__ base; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  msg_err; struct i2c_msg* msg_r; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTO ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 scalar_t__ MST_DATA ; 
 scalar_t__ MST_RX_FIFO ; 
 scalar_t__ MST_RX_XFER ; 
 int /*<<< orphan*/  MST_STATUS_TSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct axxia_i2c_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i2c_msg*) ; 
 int FUNC3 (size_t,int) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct axxia_i2c_dev *idev)
{
	struct i2c_msg *msg = idev->msg_r;
	size_t rx_fifo_avail = FUNC4(idev->base + MST_RX_FIFO);
	int bytes_to_transfer = FUNC3(rx_fifo_avail, msg->len - idev->msg_xfrd_r);

	while (bytes_to_transfer-- > 0) {
		int c = FUNC4(idev->base + MST_DATA);

		if (idev->msg_xfrd_r == 0 && FUNC2(msg)) {
			/*
			 * Check length byte for SMBus block read
			 */
			if (c <= 0 || c > I2C_SMBUS_BLOCK_MAX) {
				idev->msg_err = -EPROTO;
				FUNC1(idev, ~MST_STATUS_TSS);
				FUNC0(&idev->msg_complete);
				break;
			}
			msg->len = 1 + c;
			FUNC5(msg->len, idev->base + MST_RX_XFER);
		}
		msg->buf[idev->msg_xfrd_r++] = c;
	}

	return 0;
}