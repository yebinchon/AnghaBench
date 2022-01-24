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
union i2c_smbus_data {int byte; size_t* block; int /*<<< orphan*/  word; } ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_adapter {scalar_t__ algo_data; } ;
struct hid_device {int dummy; } ;
struct cp2112_device {struct hid_device* hdev; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int CP2112_CANCEL_TRANSFER ; 
 int EBUSY ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
#define  I2C_SMBUS_BLOCK_DATA 134 
 size_t I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BLOCK_PROC_CALL 133 
#define  I2C_SMBUS_BYTE 132 
#define  I2C_SMBUS_BYTE_DATA 131 
#define  I2C_SMBUS_I2C_BLOCK_DATA 130 
#define  I2C_SMBUS_PROC_CALL 129 
 char I2C_SMBUS_READ ; 
#define  I2C_SMBUS_WORD_DATA 128 
 char I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  PM_HINT_FULLON ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 unsigned int XFER_STATUS_RETRIES ; 
 int FUNC0 (struct hid_device*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cp2112_device*,int*,size_t) ; 
 scalar_t__ FUNC2 (int*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,size_t,int,int*,int) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC5 (struct cp2112_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct hid_device*,char*,int) ; 
 int FUNC9 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hid_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*,size_t) ; 

__attribute__((used)) static int FUNC13(struct i2c_adapter *adap, u16 addr,
		       unsigned short flags, char read_write, u8 command,
		       int size, union i2c_smbus_data *data)
{
	struct cp2112_device *dev = (struct cp2112_device *)adap->algo_data;
	struct hid_device *hdev = dev->hdev;
	u8 buf[64];
	__le16 word;
	ssize_t count;
	size_t read_length = 0;
	unsigned int retries;
	int ret;

	FUNC7(hdev, "%s addr 0x%x flags 0x%x cmd 0x%x size %d\n",
		read_write == I2C_SMBUS_WRITE ? "write" : "read",
		addr, flags, command, size);

	switch (size) {
	case I2C_SMBUS_BYTE:
		read_length = 1;

		if (I2C_SMBUS_READ == read_write)
			count = FUNC2(buf, addr, read_length);
		else
			count = FUNC4(buf, addr, command, NULL,
						 0);
		break;
	case I2C_SMBUS_BYTE_DATA:
		read_length = 1;

		if (I2C_SMBUS_READ == read_write)
			count = FUNC3(buf, addr, read_length,
						      command, NULL, 0);
		else
			count = FUNC4(buf, addr, command,
						 &data->byte, 1);
		break;
	case I2C_SMBUS_WORD_DATA:
		read_length = 2;
		word = FUNC6(data->word);

		if (I2C_SMBUS_READ == read_write)
			count = FUNC3(buf, addr, read_length,
						      command, NULL, 0);
		else
			count = FUNC4(buf, addr, command,
						 (u8 *)&word, 2);
		break;
	case I2C_SMBUS_PROC_CALL:
		size = I2C_SMBUS_WORD_DATA;
		read_write = I2C_SMBUS_READ;
		read_length = 2;
		word = FUNC6(data->word);

		count = FUNC3(buf, addr, read_length, command,
					      (u8 *)&word, 2);
		break;
	case I2C_SMBUS_I2C_BLOCK_DATA:
		if (read_write == I2C_SMBUS_READ) {
			read_length = data->block[0];
			count = FUNC3(buf, addr, read_length,
						      command, NULL, 0);
		} else {
			count = FUNC4(buf, addr, command,
						 data->block + 1,
						 data->block[0]);
		}
		break;
	case I2C_SMBUS_BLOCK_DATA:
		if (I2C_SMBUS_READ == read_write) {
			count = FUNC3(buf, addr,
						      I2C_SMBUS_BLOCK_MAX,
						      command, NULL, 0);
		} else {
			count = FUNC4(buf, addr, command,
						 data->block,
						 data->block[0] + 1);
		}
		break;
	case I2C_SMBUS_BLOCK_PROC_CALL:
		size = I2C_SMBUS_BLOCK_DATA;
		read_write = I2C_SMBUS_READ;

		count = FUNC3(buf, addr, I2C_SMBUS_BLOCK_MAX,
					      command, data->block,
					      data->block[0] + 1);
		break;
	default:
		FUNC10(hdev, "Unsupported transaction %d\n", size);
		return -EOPNOTSUPP;
	}

	if (count < 0)
		return count;

	ret = FUNC9(hdev, PM_HINT_FULLON);
	if (ret < 0) {
		FUNC8(hdev, "power management error: %d\n", ret);
		return ret;
	}

	ret = FUNC0(hdev, buf, count, HID_OUTPUT_REPORT);
	if (ret < 0) {
		FUNC10(hdev, "Error starting transaction: %d\n", ret);
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
		FUNC10(hdev, "Transfer timed out, cancelling.\n");
		buf[0] = CP2112_CANCEL_TRANSFER;
		buf[1] = 0x01;

		ret = FUNC0(hdev, buf, 2, HID_OUTPUT_REPORT);
		if (ret < 0)
			FUNC10(hdev, "Error cancelling transaction: %d\n",
				 ret);

		ret = -ETIMEDOUT;
		goto power_normal;
	}

	if (I2C_SMBUS_WRITE == read_write) {
		ret = 0;
		goto power_normal;
	}

	if (I2C_SMBUS_BLOCK_DATA == size)
		read_length = ret;

	ret = FUNC1(dev, buf, read_length);
	if (ret < 0)
		goto power_normal;
	if (ret != read_length) {
		FUNC10(hdev, "short read: %d < %zd\n", ret, read_length);
		ret = -EIO;
		goto power_normal;
	}

	switch (size) {
	case I2C_SMBUS_BYTE:
	case I2C_SMBUS_BYTE_DATA:
		data->byte = buf[0];
		break;
	case I2C_SMBUS_WORD_DATA:
		data->word = FUNC11((__le16 *)buf);
		break;
	case I2C_SMBUS_I2C_BLOCK_DATA:
		FUNC12(data->block + 1, buf, read_length);
		break;
	case I2C_SMBUS_BLOCK_DATA:
		if (read_length > I2C_SMBUS_BLOCK_MAX) {
			ret = -EPROTO;
			goto power_normal;
		}

		FUNC12(data->block, buf, read_length);
		break;
	}

	ret = 0;
power_normal:
	FUNC9(hdev, PM_HINT_NORMAL);
	FUNC7(hdev, "transfer finished: %d\n", ret);
	return ret;
}