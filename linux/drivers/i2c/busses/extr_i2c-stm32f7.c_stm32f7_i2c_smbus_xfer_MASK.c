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
union i2c_smbus_data {int byte; int word; int* block; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct stm32f7_i2c_msg {int size; char read_write; int smbus; int result; int* smbus_buf; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct stm32f7_i2c_dev {scalar_t__ use_dma; TYPE_1__ adap; int /*<<< orphan*/  complete; struct device* dev; struct stm32_i2c_dma* dma; struct stm32f7_i2c_msg f7_msg; } ;
struct stm32_i2c_dma {int /*<<< orphan*/  chan_using; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 unsigned short I2C_CLIENT_PEC ; 
#define  I2C_SMBUS_BLOCK_DATA 133 
#define  I2C_SMBUS_BLOCK_PROC_CALL 132 
#define  I2C_SMBUS_BYTE 131 
#define  I2C_SMBUS_BYTE_DATA 130 
#define  I2C_SMBUS_PROC_CALL 129 
 int I2C_SMBUS_QUICK ; 
#define  I2C_SMBUS_WORD_DATA 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct stm32f7_i2c_dev* FUNC3 (struct i2c_adapter*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int FUNC7 (struct stm32f7_i2c_dev*) ; 
 int FUNC8 (struct stm32f7_i2c_dev*,unsigned short,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int FUNC9 (struct stm32f7_i2c_dev*) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adapter, u16 addr,
				  unsigned short flags, char read_write,
				  u8 command, int size,
				  union i2c_smbus_data *data)
{
	struct stm32f7_i2c_dev *i2c_dev = FUNC3(adapter);
	struct stm32f7_i2c_msg *f7_msg = &i2c_dev->f7_msg;
	struct stm32_i2c_dma *dma = i2c_dev->dma;
	struct device *dev = i2c_dev->dev;
	unsigned long timeout;
	int i, ret;

	f7_msg->addr = addr;
	f7_msg->size = size;
	f7_msg->read_write = read_write;
	f7_msg->smbus = true;

	ret = FUNC4(dev);
	if (ret < 0)
		return ret;

	ret = FUNC9(i2c_dev);
	if (ret)
		goto pm_free;

	ret = FUNC8(i2c_dev, flags, command, data);
	if (ret)
		goto pm_free;

	timeout = FUNC10(&i2c_dev->complete,
					      i2c_dev->adap.timeout);
	ret = f7_msg->result;
	if (ret)
		goto pm_free;

	if (!timeout) {
		FUNC0(dev, "Access to slave 0x%x timed out\n", f7_msg->addr);
		if (i2c_dev->use_dma)
			FUNC2(dma->chan_using);
		ret = -ETIMEDOUT;
		goto pm_free;
	}

	/* Check PEC */
	if ((flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && read_write) {
		ret = FUNC7(i2c_dev);
		if (ret)
			goto pm_free;
	}

	if (read_write && size != I2C_SMBUS_QUICK) {
		switch (size) {
		case I2C_SMBUS_BYTE:
		case I2C_SMBUS_BYTE_DATA:
			data->byte = f7_msg->smbus_buf[0];
		break;
		case I2C_SMBUS_WORD_DATA:
		case I2C_SMBUS_PROC_CALL:
			data->word = f7_msg->smbus_buf[0] |
				(f7_msg->smbus_buf[1] << 8);
		break;
		case I2C_SMBUS_BLOCK_DATA:
		case I2C_SMBUS_BLOCK_PROC_CALL:
		for (i = 0; i <= f7_msg->smbus_buf[0]; i++)
			data->block[i] = f7_msg->smbus_buf[i];
		break;
		default:
			FUNC1(dev, "Unsupported smbus transaction\n");
			ret = -EINVAL;
		}
	}

pm_free:
	FUNC5(dev);
	FUNC6(dev);
	return ret;
}