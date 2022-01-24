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
struct inode {int dummy; } ;
struct i2c_client {struct i2c_adapter* adapter; int /*<<< orphan*/  name; } ;
struct i2c_adapter {int nr; } ;
struct file {struct i2c_client* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 struct i2c_adapter* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 unsigned int FUNC2 (struct inode*) ; 
 struct i2c_client* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC2(inode);
	struct i2c_client *client;
	struct i2c_adapter *adap;

	adap = FUNC0(minor);
	if (!adap)
		return -ENODEV;

	/* This creates an anonymous i2c_client, which may later be
	 * pointed to some address using I2C_SLAVE or I2C_SLAVE_FORCE.
	 *
	 * This client is ** NEVER REGISTERED ** with the driver model
	 * or I2C core code!!  It just holds private copies of addressing
	 * information and maybe a PEC flag.
	 */
	client = FUNC3(sizeof(*client), GFP_KERNEL);
	if (!client) {
		FUNC1(adap);
		return -ENOMEM;
	}
	FUNC4(client->name, I2C_NAME_SIZE, "i2c-dev %d", adap->nr);

	client->adapter = adap;
	file->private_data = client;

	return 0;
}