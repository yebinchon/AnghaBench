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
typedef  int /*<<< orphan*/  u8 ;
struct opa_vnic_vema_port {int /*<<< orphan*/  vports; int /*<<< orphan*/  port_num; struct opa_vnic_ctrl_port* cport; } ;
struct opa_vnic_ctrl_port {int /*<<< orphan*/  ibdev; } ;
struct opa_vnic_adapter {struct opa_vnic_ctrl_port* cport; } ;

/* Variables and functions */
 struct opa_vnic_adapter* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct opa_vnic_adapter*) ; 
 struct opa_vnic_adapter* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct opa_vnic_adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct opa_vnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct opa_vnic_adapter *FUNC5(struct opa_vnic_vema_port *port,
					       u8 vport_num)
{
	struct opa_vnic_ctrl_port *cport = port->cport;
	struct opa_vnic_adapter *adapter;

	adapter = FUNC2(cport->ibdev, port->port_num, vport_num);
	if (!FUNC1(adapter)) {
		int rc;

		adapter->cport = cport;
		rc = FUNC4(&port->vports, vport_num, adapter, GFP_KERNEL);
		if (rc < 0) {
			FUNC3(adapter);
			adapter = FUNC0(rc);
		}
	}

	return adapter;
}