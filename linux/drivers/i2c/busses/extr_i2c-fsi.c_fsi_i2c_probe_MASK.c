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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {struct device* parent; struct device_node* of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; struct fsi_i2c_port* algo_data; int /*<<< orphan*/ * bus_recovery_info; int /*<<< orphan*/ * algo; TYPE_1__ dev; int /*<<< orphan*/  owner; } ;
struct fsi_i2c_port {int /*<<< orphan*/  list; TYPE_2__ adapter; scalar_t__ port; struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int /*<<< orphan*/  ports; int /*<<< orphan*/  fsi; int /*<<< orphan*/  lock; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FSI_STAT ; 
 int /*<<< orphan*/  I2C_STAT_MAX_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct fsi_i2c_master*) ; 
 struct fsi_i2c_master* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsi_i2c_algorithm ; 
 int /*<<< orphan*/  fsi_i2c_bus_recovery_info ; 
 int FUNC6 (struct fsi_i2c_master*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_i2c_port*) ; 
 struct fsi_i2c_port* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 

__attribute__((used)) static int FUNC18(struct device *dev)
{
	struct fsi_i2c_master *i2c;
	struct fsi_i2c_port *port;
	struct device_node *np;
	u32 port_no, ports, stat;
	int rc;

	i2c = FUNC5(dev, sizeof(*i2c), GFP_KERNEL);
	if (!i2c)
		return -ENOMEM;

	FUNC13(&i2c->lock);
	i2c->fsi = FUNC17(dev);
	FUNC1(&i2c->ports);

	rc = FUNC6(i2c);
	if (rc)
		return rc;

	rc = FUNC8(i2c->fsi, I2C_FSI_STAT, &stat);
	if (rc)
		return rc;

	ports = FUNC0(I2C_STAT_MAX_PORT, stat) + 1;
	FUNC2(dev, "I2C master has %d ports\n", ports);

	for (port_no = 0; port_no < ports; port_no++) {
		np = FUNC7(dev->of_node, port_no);
		if (np && !FUNC14(np))
			continue;

		port = FUNC11(sizeof(*port), GFP_KERNEL);
		if (!port) {
			FUNC15(np);
			break;
		}

		port->master = i2c;
		port->port = port_no;

		port->adapter.owner = THIS_MODULE;
		port->adapter.dev.of_node = np;
		port->adapter.dev.parent = dev;
		port->adapter.algo = &fsi_i2c_algorithm;
		port->adapter.bus_recovery_info = &fsi_i2c_bus_recovery_info;
		port->adapter.algo_data = port;

		FUNC16(port->adapter.name, sizeof(port->adapter.name),
			 "i2c_bus-%u", port_no);

		rc = FUNC9(&port->adapter);
		if (rc < 0) {
			FUNC3(dev, "Failed to register adapter: %d\n", rc);
			FUNC10(port);
			continue;
		}

		FUNC12(&port->list, &i2c->ports);
	}

	FUNC4(dev, i2c);

	return 0;
}