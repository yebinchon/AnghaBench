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
struct TYPE_2__ {unsigned short addr; } ;
struct psmouse_smbus_dev {int /*<<< orphan*/  client; TYPE_1__ board; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned short I2C_CLIENT_END ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_HOST_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,TYPE_1__*,unsigned short*,int /*<<< orphan*/ *) ; 
 struct i2c_adapter* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct psmouse_smbus_dev *smbdev = data;
	unsigned short addr_list[] = { smbdev->board.addr, I2C_CLIENT_END };
	struct i2c_adapter *adapter;

	adapter = FUNC2(dev);
	if (!adapter)
		return 0;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_HOST_NOTIFY))
		return 0;

	smbdev->client = FUNC1(adapter, &smbdev->board,
					       addr_list, NULL);
	if (!smbdev->client)
		return 0;

	/* We have our(?) device, stop iterating i2c bus. */
	return 1;
}