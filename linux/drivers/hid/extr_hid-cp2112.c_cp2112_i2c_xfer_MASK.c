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
typedef  int u8 ;
struct i2c_msg {int flags; scalar_t__ len; int* buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;
struct hid_device {int dummy; } ;
struct cp2112_device {int hwversion; struct hid_device* hdev; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int CP2112_CANCEL_TRANSFER ; 
 int EBUSY ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  PM_HINT_FULLON ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 unsigned int XFER_STATUS_RETRIES ; 
 int FUNC0 (struct hid_device*,int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ,int*,scalar_t__) ; 
 int FUNC3 (struct cp2112_device*,int*,scalar_t__) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct cp2112_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,char*,...) ; 
 int FUNC8 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*,char*,...) ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *adap, struct i2c_msg *msgs,
			   int num)
{
	struct cp2112_device *dev = (struct cp2112_device *)adap->algo_data;
	struct hid_device *hdev = dev->hdev;
	u8 buf[64];
	ssize_t count;
	ssize_t read_length = 0;
	u8 *read_buf = NULL;
	unsigned int retries;
	int ret;

	FUNC6(hdev, "I2C %d messages\n", num);

	if (num == 1) {
		if (msgs->flags & I2C_M_RD) {
			FUNC6(hdev, "I2C read %#04x len %d\n",
				msgs->addr, msgs->len);
			read_length = msgs->len;
			read_buf = msgs->buf;
			count = FUNC4(buf, msgs->addr, msgs->len);
		} else {
			FUNC6(hdev, "I2C write %#04x len %d\n",
				msgs->addr, msgs->len);
			count = FUNC2(buf, msgs->addr,
						     msgs->buf, msgs->len);
		}
		if (count < 0)
			return count;
	} else if (dev->hwversion > 1 &&  /* no repeated start in rev 1 */
		   num == 2 &&
		   msgs[0].addr == msgs[1].addr &&
		   !(msgs[0].flags & I2C_M_RD) && (msgs[1].flags & I2C_M_RD)) {
		FUNC6(hdev, "I2C write-read %#04x wlen %d rlen %d\n",
			msgs[0].addr, msgs[0].len, msgs[1].len);
		read_length = msgs[1].len;
		read_buf = msgs[1].buf;
		count = FUNC1(buf, msgs[0].addr,
				msgs[0].buf, msgs[0].len, msgs[1].len);
		if (count < 0)
			return count;
	} else {
		FUNC7(hdev,
			"Multi-message I2C transactions not supported\n");
		return -EOPNOTSUPP;
	}

	ret = FUNC8(hdev, PM_HINT_FULLON);
	if (ret < 0) {
		FUNC7(hdev, "power management error: %d\n", ret);
		return ret;
	}

	ret = FUNC0(hdev, buf, count, HID_OUTPUT_REPORT);
	if (ret < 0) {
		FUNC9(hdev, "Error starting transaction: %d\n", ret);
		goto power_normal;
	}

	for (retries = 0; retries < XFER_STATUS_RETRIES; ++retries) {
		ret = FUNC5(dev);
		if (-EBUSY == ret)
			continue;
		if (ret < 0)
			goto power_normal;
		break;
	}

	if (XFER_STATUS_RETRIES <= retries) {
		FUNC9(hdev, "Transfer timed out, cancelling.\n");
		buf[0] = CP2112_CANCEL_TRANSFER;
		buf[1] = 0x01;

		ret = FUNC0(hdev, buf, 2, HID_OUTPUT_REPORT);
		if (ret < 0)
			FUNC9(hdev, "Error cancelling transaction: %d\n",
				 ret);

		ret = -ETIMEDOUT;
		goto power_normal;
	}

	for (count = 0; count < read_length;) {
		ret = FUNC3(dev, read_buf + count, read_length - count);
		if (ret < 0)
			goto power_normal;
		if (ret == 0) {
			FUNC7(hdev, "read returned 0\n");
			ret = -EIO;
			goto power_normal;
		}
		count += ret;
		if (count > read_length) {
			/*
			 * The hardware returned too much data.
			 * This is mostly harmless because cp2112_read()
			 * has a limit check so didn't overrun our
			 * buffer.  Nevertheless, we return an error
			 * because something is seriously wrong and
			 * it shouldn't go unnoticed.
			 */
			FUNC7(hdev, "long read: %d > %zd\n",
				ret, read_length - count + ret);
			ret = -EIO;
			goto power_normal;
		}
	}

	/* return the number of transferred messages */
	ret = num;

power_normal:
	FUNC8(hdev, PM_HINT_NORMAL);
	FUNC6(hdev, "I2C transfer finished: %d\n", ret);
	return ret;
}