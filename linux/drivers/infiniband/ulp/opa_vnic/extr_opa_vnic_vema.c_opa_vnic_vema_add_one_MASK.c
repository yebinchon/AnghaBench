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
struct opa_vnic_vema_port {int dummy; } ;
struct opa_vnic_ctrl_port {int num_ports; struct ib_device* ibdev; } ;
struct ib_device {int phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ *,struct opa_vnic_ctrl_port*) ; 
 struct opa_vnic_ctrl_port* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opa_vnic_client ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_ctrl_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 int FUNC5 (struct opa_vnic_ctrl_port*) ; 

__attribute__((used)) static void FUNC6(struct ib_device *device)
{
	struct opa_vnic_ctrl_port *cport;
	int rc, size = sizeof(*cport);

	if (!FUNC4(device))
		return;

	size += device->phys_port_cnt * sizeof(struct opa_vnic_vema_port);
	cport = FUNC2(size, GFP_KERNEL);
	if (!cport)
		return;

	cport->num_ports = device->phys_port_cnt;
	cport->ibdev = device;

	/* Initialize opa vnic management agent (vema) */
	rc = FUNC5(cport);
	if (!rc)
		FUNC0("VNIC client initialized\n");

	FUNC1(device, &opa_vnic_client, cport);
	FUNC3(cport, true);
}