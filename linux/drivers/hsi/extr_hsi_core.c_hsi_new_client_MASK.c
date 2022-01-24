#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hsi_port {int /*<<< orphan*/  device; } ;
struct TYPE_7__ {int num_channels; struct hsi_client* channels; } ;
struct TYPE_8__ {int /*<<< orphan*/  archdata; int /*<<< orphan*/  platform_data; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * bus; } ;
struct TYPE_6__ {int num_channels; struct hsi_client* channels; } ;
struct hsi_client {TYPE_2__ tx_cfg; TYPE_3__ device; TYPE_1__ rx_cfg; } ;
struct hsi_board_info {int /*<<< orphan*/  name; int /*<<< orphan*/ * archdata; int /*<<< orphan*/  platform_data; TYPE_1__ rx_cfg; TYPE_2__ tx_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  hsi_bus_type ; 
 int /*<<< orphan*/  hsi_client_release ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_client*) ; 
 void* FUNC3 (struct hsi_client*,size_t,int /*<<< orphan*/ ) ; 
 struct hsi_client* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

struct hsi_client *FUNC7(struct hsi_port *port,
						struct hsi_board_info *info)
{
	struct hsi_client *cl;
	size_t size;

	cl = FUNC4(sizeof(*cl), GFP_KERNEL);
	if (!cl)
		goto err;

	cl->tx_cfg = info->tx_cfg;
	if (cl->tx_cfg.channels) {
		size = cl->tx_cfg.num_channels * sizeof(*cl->tx_cfg.channels);
		cl->tx_cfg.channels = FUNC3(info->tx_cfg.channels, size,
					      GFP_KERNEL);
		if (!cl->tx_cfg.channels)
			goto err_tx;
	}

	cl->rx_cfg = info->rx_cfg;
	if (cl->rx_cfg.channels) {
		size = cl->rx_cfg.num_channels * sizeof(*cl->rx_cfg.channels);
		cl->rx_cfg.channels = FUNC3(info->rx_cfg.channels, size,
					      GFP_KERNEL);
		if (!cl->rx_cfg.channels)
			goto err_rx;
	}

	cl->device.bus = &hsi_bus_type;
	cl->device.parent = &port->device;
	cl->device.release = hsi_client_release;
	FUNC0(&cl->device, "%s", info->name);
	cl->device.platform_data = info->platform_data;
	if (info->archdata)
		cl->device.archdata = *info->archdata;
	if (FUNC1(&cl->device) < 0) {
		FUNC5("hsi: failed to register client: %s\n", info->name);
		FUNC6(&cl->device);
	}

	return cl;
err_rx:
	FUNC2(cl->tx_cfg.channels);
err_tx:
	FUNC2(cl);
err:
	return NULL;
}