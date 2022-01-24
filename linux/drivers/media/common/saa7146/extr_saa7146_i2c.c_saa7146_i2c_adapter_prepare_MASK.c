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
typedef  int /*<<< orphan*/  u32 ;
struct saa7146_dev {TYPE_2__* pci; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  i2c_bitrate; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int /*<<< orphan*/  retries; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MASK_08 ; 
 int MASK_24 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  SAA7146_I2C_RETRIES ; 
 int /*<<< orphan*/  SAA7146_I2C_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  saa7146_algo ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct saa7146_dev *dev, struct i2c_adapter *i2c_adapter, u32 bitrate)
{
	FUNC0("bitrate: 0x%08x\n", bitrate);

	/* enable i2c-port pins */
	FUNC3(dev, MC1, (MASK_08 | MASK_24));

	dev->i2c_bitrate = bitrate;
	FUNC2(dev);

	if (i2c_adapter) {
		FUNC1(i2c_adapter, &dev->v4l2_dev);
		i2c_adapter->dev.parent    = &dev->pci->dev;
		i2c_adapter->algo	   = &saa7146_algo;
		i2c_adapter->algo_data     = NULL;
		i2c_adapter->timeout = SAA7146_I2C_TIMEOUT;
		i2c_adapter->retries = SAA7146_I2C_RETRIES;
	}

	return 0;
}