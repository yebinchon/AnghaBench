#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_9__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_ssi_port {size_t port_id; TYPE_1__* pdev; int /*<<< orphan*/ * dev; int /*<<< orphan*/  wk_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  ssr_dma; int /*<<< orphan*/  ssr_base; int /*<<< orphan*/  sst_dma; int /*<<< orphan*/  sst_base; int /*<<< orphan*/  work; int /*<<< orphan*/  errqueue_work; struct gpio_desc* wake_gpio; } ;
struct omap_ssi_controller {int /*<<< orphan*/  dir; struct omap_ssi_port** port; } ;
struct hsi_port {int /*<<< orphan*/  device; int /*<<< orphan*/  release; int /*<<< orphan*/  stop_tx; int /*<<< orphan*/  start_tx; int /*<<< orphan*/  flush; int /*<<< orphan*/  setup; int /*<<< orphan*/  async; } ;
struct hsi_controller {size_t num_ports; struct hsi_port** port; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 struct hsi_controller* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,size_t) ; 
 struct gpio_desc* FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct omap_ssi_port* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hsi_port*,struct device_node*) ; 
 struct omap_ssi_controller* FUNC11 (struct hsi_controller*) ; 
 int /*<<< orphan*/  FUNC12 (struct hsi_port*,struct omap_ssi_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssi_async ; 
 int FUNC19 (struct omap_ssi_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssi_flush ; 
 int FUNC20 (struct platform_device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct hsi_port*,struct platform_device*) ; 
 int /*<<< orphan*/  ssi_process_errqueue ; 
 int /*<<< orphan*/  FUNC22 (struct omap_ssi_port*) ; 
 int /*<<< orphan*/  ssi_release ; 
 int /*<<< orphan*/  ssi_setup ; 
 int /*<<< orphan*/  ssi_start_tx ; 
 int /*<<< orphan*/  ssi_stop_tx ; 
 int FUNC23 (struct hsi_port*,struct platform_device*) ; 
 int /*<<< orphan*/  start_tx_work ; 

__attribute__((used)) static int FUNC24(struct platform_device *pd)
{
	struct device_node *np = pd->dev.of_node;
	struct hsi_port *port;
	struct omap_ssi_port *omap_port;
	struct hsi_controller *ssi = FUNC6(pd->dev.parent);
	struct omap_ssi_controller *omap_ssi = FUNC11(ssi);
	struct gpio_desc *cawake_gpio = NULL;
	u32 port_id;
	int err;

	FUNC4(&pd->dev, "init ssi port...\n");

	if (!ssi->port || !omap_ssi->port) {
		FUNC5(&pd->dev, "ssi controller not initialized!\n");
		err = -ENODEV;
		goto error;
	}

	/* get id of first uninitialized port in controller */
	for (port_id = 0; port_id < ssi->num_ports && omap_ssi->port[port_id];
		port_id++)
		;

	if (port_id >= ssi->num_ports) {
		FUNC5(&pd->dev, "port id out of range!\n");
		err = -ENODEV;
		goto error;
	}

	port = ssi->port[port_id];

	if (!np) {
		FUNC5(&pd->dev, "missing device tree data\n");
		err = -EINVAL;
		goto error;
	}

	cawake_gpio = FUNC8(&pd->dev, "ti,ssi-cawake", GPIOD_IN);
	if (FUNC2(cawake_gpio)) {
		err = FUNC3(cawake_gpio);
		FUNC5(&pd->dev, "couldn't get cawake gpio (err=%d)!\n", err);
		goto error;
	}

	omap_port = FUNC9(&port->device, sizeof(*omap_port), GFP_KERNEL);
	if (!omap_port) {
		err = -ENOMEM;
		goto error;
	}
	omap_port->wake_gpio = cawake_gpio;
	omap_port->pdev = &pd->dev;
	omap_port->port_id = port_id;

	FUNC0(&omap_port->errqueue_work, ssi_process_errqueue);
	FUNC1(&omap_port->work, start_tx_work);

	/* initialize HSI port */
	port->async	= ssi_async;
	port->setup	= ssi_setup;
	port->flush	= ssi_flush;
	port->start_tx	= ssi_start_tx;
	port->stop_tx	= ssi_stop_tx;
	port->release	= ssi_release;
	FUNC12(port, omap_port);
	omap_ssi->port[port_id] = omap_port;

	FUNC13(pd, port);

	err = FUNC20(pd, "tx", &omap_port->sst_base,
		&omap_port->sst_dma);
	if (err < 0)
		goto error;
	err = FUNC20(pd, "rx", &omap_port->ssr_base,
		&omap_port->ssr_dma);
	if (err < 0)
		goto error;

	err = FUNC21(port, pd);
	if (err < 0)
		goto error;
	err = FUNC23(port, pd);
	if (err < 0)
		goto error;

	FUNC22(omap_port);
	FUNC18(&omap_port->lock);
	FUNC18(&omap_port->wk_lock);
	omap_port->dev = &port->device;

	FUNC17(omap_port->pdev);
	FUNC16(omap_port->pdev, 250);
	FUNC15(omap_port->pdev);

#ifdef CONFIG_DEBUG_FS
	err = ssi_debug_add_port(omap_port, omap_ssi->dir);
	if (err < 0) {
		pm_runtime_disable(omap_port->pdev);
		goto error;
	}
#endif

	FUNC10(port, np);

	FUNC7(&pd->dev, "ssi port %u successfully initialized\n", port_id);

	return 0;

error:
	return err;
}