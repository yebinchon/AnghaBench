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
struct stm32f7_i2c_msg {int smbus; int result; } ;
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct stm32f7_i2c_dev {int msg_num; int /*<<< orphan*/  dev; scalar_t__ use_dma; struct i2c_msg* msg; TYPE_1__ adap; int /*<<< orphan*/  complete; scalar_t__ msg_id; struct stm32_i2c_dma* dma; struct stm32f7_i2c_msg f7_msg; } ;
struct stm32_i2c_dma {int /*<<< orphan*/  chan_using; } ;
struct i2c_msg {int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct stm32f7_i2c_dev* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct stm32f7_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32f7_i2c_dev*,struct i2c_msg*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *i2c_adap,
			    struct i2c_msg msgs[], int num)
{
	struct stm32f7_i2c_dev *i2c_dev = FUNC2(i2c_adap);
	struct stm32f7_i2c_msg *f7_msg = &i2c_dev->f7_msg;
	struct stm32_i2c_dma *dma = i2c_dev->dma;
	unsigned long time_left;
	int ret;

	i2c_dev->msg = msgs;
	i2c_dev->msg_num = num;
	i2c_dev->msg_id = 0;
	f7_msg->smbus = false;

	ret = FUNC3(i2c_dev->dev);
	if (ret < 0)
		return ret;

	ret = FUNC6(i2c_dev);
	if (ret)
		goto pm_free;

	FUNC7(i2c_dev, msgs);

	time_left = FUNC8(&i2c_dev->complete,
						i2c_dev->adap.timeout);
	ret = f7_msg->result;

	if (!time_left) {
		FUNC0(i2c_dev->dev, "Access to slave 0x%x timed out\n",
			i2c_dev->msg->addr);
		if (i2c_dev->use_dma)
			FUNC1(dma->chan_using);
		ret = -ETIMEDOUT;
	}

pm_free:
	FUNC4(i2c_dev->dev);
	FUNC5(i2c_dev->dev);

	return (ret < 0) ? ret : num;
}