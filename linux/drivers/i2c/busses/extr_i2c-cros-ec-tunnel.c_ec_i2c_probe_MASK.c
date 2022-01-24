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
struct device {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device_node* of_node; struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  retries; TYPE_1__ dev; struct ec_i2c_device* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; int /*<<< orphan*/  owner; } ;
struct ec_i2c_device {TYPE_2__ adap; struct device* dev; struct cros_ec_device* ec; int /*<<< orphan*/  remote_bus; } ;
struct device_node {int dummy; } ;
struct cros_ec_device {int /*<<< orphan*/  cmd_xfer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_MAX_RETRIES ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct cros_ec_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ec_i2c_device* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ec_i2c_algorithm ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct ec_i2c_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct cros_ec_device *ec = FUNC1(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct ec_i2c_device *bus = NULL;
	u32 remote_bus;
	int err;

	if (!ec->cmd_xfer) {
		FUNC0(dev, "Missing sendrecv\n");
		return -EINVAL;
	}

	bus = FUNC2(dev, sizeof(*bus), GFP_KERNEL);
	if (bus == NULL)
		return -ENOMEM;

	err = FUNC4(np, "google,remote-bus", &remote_bus);
	if (err) {
		FUNC0(dev, "Couldn't read remote-bus property\n");
		return err;
	}
	bus->remote_bus = remote_bus;

	bus->ec = ec;
	bus->dev = dev;

	bus->adap.owner = THIS_MODULE;
	FUNC6(bus->adap.name, "cros-ec-i2c-tunnel", sizeof(bus->adap.name));
	bus->adap.algo = &ec_i2c_algorithm;
	bus->adap.algo_data = bus;
	bus->adap.dev.parent = &pdev->dev;
	bus->adap.dev.of_node = np;
	bus->adap.retries = I2C_MAX_RETRIES;

	err = FUNC3(&bus->adap);
	if (err)
		return err;
	FUNC5(pdev, bus);

	return err;
}