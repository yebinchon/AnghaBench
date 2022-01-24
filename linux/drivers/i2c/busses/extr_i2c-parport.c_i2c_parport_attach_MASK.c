#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct parport {int number; int name; TYPE_3__* physport; } ;
struct pardev_cb {struct i2c_par* private; int /*<<< orphan*/  irq_func; int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  parent; } ;
struct TYPE_13__ {TYPE_2__ dev; TYPE_8__* algo_data; int /*<<< orphan*/  name; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct TYPE_19__ {int udelay; struct parport* data; int /*<<< orphan*/ * getscl; } ;
struct i2c_par {TYPE_4__* pdev; int /*<<< orphan*/  node; scalar_t__ ara; int /*<<< orphan*/  alert_data; TYPE_10__ adapter; TYPE_8__ algo_data; } ;
typedef  int /*<<< orphan*/  i2c_parport_cb ;
struct TYPE_20__ {scalar_t__ val; } ;
struct TYPE_18__ {int /*<<< orphan*/  dev; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  val; } ;
struct TYPE_14__ {scalar_t__ smbus_alert; TYPE_9__ init; TYPE_1__ getscl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int MAX_DEVICE ; 
 int /*<<< orphan*/  PARPORT_FLAG_EXCL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_list ; 
 int /*<<< orphan*/  adapter_list_lock ; 
 TYPE_12__* adapter_parm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (TYPE_10__*) ; 
 int /*<<< orphan*/  i2c_parport_irq ; 
 scalar_t__ FUNC3 (TYPE_10__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_par*) ; 
 struct i2c_par* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*,int,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pardev_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int* parport ; 
 TYPE_8__ parport_algo_data ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct parport*) ; 
 int /*<<< orphan*/  FUNC14 (struct parport*) ; 
 TYPE_4__* FUNC15 (struct parport*,char*,struct pardev_cb*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct parport*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct parport*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 
 size_t type ; 

__attribute__((used)) static void FUNC23(struct parport *port)
{
	struct i2c_par *adapter;
	int i;
	struct pardev_cb i2c_parport_cb;

	for (i = 0; i < MAX_DEVICE; i++) {
		if (parport[i] == -1)
			continue;
		if (port->number == parport[i])
			break;
	}
	if (i == MAX_DEVICE) {
		FUNC20("Not using parport%d.\n", port->number);
		return;
	}

	adapter = FUNC5(sizeof(struct i2c_par), GFP_KERNEL);
	if (!adapter)
		return;
	FUNC8(&i2c_parport_cb, 0, sizeof(i2c_parport_cb));
	i2c_parport_cb.flags = PARPORT_FLAG_EXCL;
	i2c_parport_cb.irq_func = i2c_parport_irq;
	i2c_parport_cb.private = adapter;

	FUNC20("attaching to %s\n", port->name);
	FUNC13(port);
	adapter->pdev = FUNC15(port, "i2c-parport",
						   &i2c_parport_cb, i);
	if (!adapter->pdev) {
		FUNC21("Unable to register with parport\n");
		goto err_free;
	}

	/* Fill the rest of the structure */
	adapter->adapter.owner = THIS_MODULE;
	adapter->adapter.class = I2C_CLASS_HWMON;
	FUNC22(adapter->adapter.name, "Parallel port adapter",
		sizeof(adapter->adapter.name));
	adapter->algo_data = parport_algo_data;
	/* Slow down if we can't sense SCL */
	if (!adapter_parm[type].getscl.val) {
		adapter->algo_data.getscl = NULL;
		adapter->algo_data.udelay = 50; /* ~10 kbps */
	}
	adapter->algo_data.data = port;
	adapter->adapter.algo_data = &adapter->algo_data;
	adapter->adapter.dev.parent = port->physport->dev;

	if (FUNC12(adapter->pdev) < 0) {
		FUNC0(&adapter->pdev->dev,
			"Could not claim parallel port\n");
		goto err_unregister;
	}

	/* Reset hardware to a sane state (SCL and SDA high) */
	FUNC18(port, 1);
	FUNC17(port, 1);
	/* Other init if needed (power on...) */
	if (adapter_parm[type].init.val) {
		FUNC6(port, 1, &adapter_parm[type].init);
		/* Give powered devices some time to settle */
		FUNC9(100);
	}

	if (FUNC2(&adapter->adapter) < 0) {
		FUNC0(&adapter->pdev->dev, "Unable to register with I2C\n");
		goto err_unregister;
	}

	/* Setup SMBus alert if supported */
	if (adapter_parm[type].smbus_alert) {
		adapter->ara = FUNC3(&adapter->adapter,
						     &adapter->alert_data);
		if (adapter->ara)
			FUNC14(port);
		else
			FUNC1(&adapter->pdev->dev,
				 "Failed to register ARA client\n");
	}

	/* Add the new adapter to the list */
	FUNC10(&adapter_list_lock);
	FUNC7(&adapter->node, &adapter_list);
	FUNC11(&adapter_list_lock);
	return;

 err_unregister:
	FUNC16(adapter->pdev);
	FUNC19(adapter->pdev);
 err_free:
	FUNC4(adapter);
}