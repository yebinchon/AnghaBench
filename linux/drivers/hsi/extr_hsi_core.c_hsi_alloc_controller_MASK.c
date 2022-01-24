#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  release; } ;
struct hsi_port {unsigned int num; TYPE_1__ device; int /*<<< orphan*/  n_head; int /*<<< orphan*/  lock; void* release; void* stop_tx; void* start_tx; void* flush; void* setup; int /*<<< orphan*/  async; } ;
struct hsi_controller {unsigned int num_ports; struct hsi_port** port; TYPE_1__ device; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  hsi_controller_release ; 
 void* hsi_dummy_cl ; 
 int /*<<< orphan*/  hsi_dummy_msg ; 
 int /*<<< orphan*/  hsi_port_release ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_controller*) ; 
 struct hsi_port** FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hsi_controller*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct hsi_controller *FUNC8(unsigned int n_ports, gfp_t flags)
{
	struct hsi_controller	*hsi;
	struct hsi_port		**port;
	unsigned int		i;

	if (!n_ports)
		return NULL;

	hsi = FUNC6(sizeof(*hsi), flags);
	if (!hsi)
		return NULL;
	port = FUNC4(n_ports, sizeof(*port), flags);
	if (!port) {
		FUNC5(hsi);
		return NULL;
	}
	hsi->num_ports = n_ports;
	hsi->port = port;
	hsi->device.release = hsi_controller_release;
	FUNC2(&hsi->device);

	for (i = 0; i < n_ports; i++) {
		port[i] = FUNC6(sizeof(**port), flags);
		if (port[i] == NULL)
			goto out;
		port[i]->num = i;
		port[i]->async = hsi_dummy_msg;
		port[i]->setup = hsi_dummy_cl;
		port[i]->flush = hsi_dummy_cl;
		port[i]->start_tx = hsi_dummy_cl;
		port[i]->stop_tx = hsi_dummy_cl;
		port[i]->release = hsi_dummy_cl;
		FUNC7(&port[i]->lock);
		FUNC0(&port[i]->n_head);
		FUNC1(&port[i]->device, "port%d", i);
		hsi->port[i]->device.release = hsi_port_release;
		FUNC2(&hsi->port[i]->device);
	}

	return hsi;
out:
	FUNC3(hsi);

	return NULL;
}