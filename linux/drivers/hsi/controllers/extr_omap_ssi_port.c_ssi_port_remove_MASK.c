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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_ssi_port {size_t port_id; int /*<<< orphan*/  errqueue_work; } ;
struct omap_ssi_controller {int /*<<< orphan*/ ** port; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct hsi_port {void* release; void* stop_tx; void* start_tx; void* flush; void* setup; int /*<<< orphan*/  async; TYPE_1__ device; } ;
struct hsi_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct omap_ssi_controller* FUNC1 (struct hsi_controller*) ; 
 void* hsi_dummy_cl ; 
 int /*<<< orphan*/  hsi_dummy_msg ; 
 struct omap_ssi_port* FUNC2 (struct hsi_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_port*) ; 
 struct hsi_port* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hsi_port*) ; 
 struct hsi_controller* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pd)
{
	struct hsi_port *port = FUNC4(pd);
	struct omap_ssi_port *omap_port = FUNC2(port);
	struct hsi_controller *ssi = FUNC9(port->device.parent);
	struct omap_ssi_controller *omap_ssi = FUNC1(ssi);

#ifdef CONFIG_DEBUG_FS
	ssi_debug_remove_port(port);
#endif

	FUNC0(&omap_port->errqueue_work);

	FUNC3(port);

	port->async	= hsi_dummy_msg;
	port->setup	= hsi_dummy_cl;
	port->flush	= hsi_dummy_cl;
	port->start_tx	= hsi_dummy_cl;
	port->stop_tx	= hsi_dummy_cl;
	port->release	= hsi_dummy_cl;

	omap_ssi->port[omap_port->port_id] = NULL;
	FUNC5(pd, NULL);

	FUNC7(&pd->dev);
	FUNC6(&pd->dev);

	return 0;
}