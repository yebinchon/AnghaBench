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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct ec_i2c_device* algo_data; } ;
struct ec_i2c_device {int /*<<< orphan*/  ec; int /*<<< orphan*/  remote_bus; struct device* dev; } ;
struct device {int dummy; } ;
struct cros_ec_command {int outsize; int insize; int /*<<< orphan*/  data; int /*<<< orphan*/  command; scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_I2C_PASSTHRU ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int,int /*<<< orphan*/  const) ; 
 int FUNC4 (struct i2c_msg*,int) ; 
 int FUNC5 (struct i2c_msg*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct i2c_msg*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *adap, struct i2c_msg i2c_msgs[],
		       int num)
{
	struct ec_i2c_device *bus = adap->algo_data;
	struct device *dev = bus->dev;
	const u16 bus_num = bus->remote_bus;
	int request_len;
	int response_len;
	int alloc_size;
	int result;
	struct cros_ec_command *msg;

	request_len = FUNC4(i2c_msgs, num);
	if (request_len < 0) {
		FUNC2(dev, "Error constructing message %d\n", request_len);
		return request_len;
	}

	response_len = FUNC5(i2c_msgs, num);
	if (response_len < 0) {
		/* Unexpected; no errors should come when NULL response */
		FUNC2(dev, "Error preparing response %d\n", response_len);
		return response_len;
	}

	alloc_size = FUNC9(request_len, response_len);
	msg = FUNC8(sizeof(*msg) + alloc_size, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	result = FUNC3(msg->data, i2c_msgs, num, bus_num);
	if (result) {
		FUNC1(dev, "Error constructing EC i2c message %d\n", result);
		goto exit;
	}

	msg->version = 0;
	msg->command = EC_CMD_I2C_PASSTHRU;
	msg->outsize = request_len;
	msg->insize = response_len;

	result = FUNC0(bus->ec, msg);
	if (result < 0) {
		FUNC1(dev, "Error transferring EC i2c message %d\n", result);
		goto exit;
	}

	result = FUNC6(msg->data, i2c_msgs, &num);
	if (result < 0)
		goto exit;

	/* Indicate success by saying how many messages were sent */
	result = num;
exit:
	FUNC7(msg);
	return result;
}